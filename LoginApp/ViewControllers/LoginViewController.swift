//
//  ViewController.swift
//  LoginApp
//
//  Created by Владимир Фалин on 01.07.2022.
//

import UIKit

class LoginViewController: UIViewController {

    // MARK: - IB outlets
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    private let users = User.getUser()
    
    //MARK: - override methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillShowNotification, object: nil, queue: nil) { _ in
            self.view.frame.origin.y = -150
        }

        NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillHideNotification, object: nil, queue: nil) { _ in
            self.view.frame.origin.y = 0
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarVC.viewControllers else { return }
        
        viewControllers.forEach { viewController in
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.userName = users.first?.person.fullname ?? ""
            } else if let userInfoVC = viewController as? UserInfoViewController {
                userInfoVC.imageName = users.first?.person.personImage ?? ""
                userInfoVC.fullname = users.first?.person.fullname ?? "?"
                userInfoVC.age = users.first?.person.age ?? "?"
                userInfoVC.hobby = users.first?.person.hobby ?? "?"
            } else if let moreInfoVC = viewController as? MoreInfoViewController {
                moreInfoVC.indonesia = users.first?.person.firstFavoriteСountrieImage ?? ""
                moreInfoVC.myanmar = users.first?.person.secondFavoriteСountrieImage ?? ""
                moreInfoVC.india = users.first?.person.thirdFavoriteСountrieImage ?? ""
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }

    // MARK: - IB actions
    
    @IBAction func logInButtonPressed() {
        guard userNameTextField.text == users.first?.login, passwordTextField.text == users.first?.password else {
            setupAlert(
                title: "Invalid login or password",
                message: "Please, enter correct login and password",
                textField: passwordTextField
            )
            return
        }
        performSegue(withIdentifier: "toWelcomeVC", sender: nil)
    }
    
    @IBAction func remindNameButton() {
        if let login = users.first?.login {
            setupAlert(title: "Oops!", message: "Your name is \(login) 😉")
        }
        
    }
    
    @IBAction func remindPasswordButton() {
        if let password = users.first?.password {
            setupAlert(title: "Oops!", message: "Your password is \(password) 😉")
        }
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    // MARK: - private methods
    
    private func setupAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

