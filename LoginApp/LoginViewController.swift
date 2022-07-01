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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.isNavigationBarHidden = true
        
        NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillShowNotification, object: nil, queue: nil) { _ in
            self.view.frame.origin.y = -150
        }

        NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillHideNotification, object: nil, queue: nil) { _ in
            self.view.frame.origin.y = 0
        }
    }

    // MARK: - IB actions
    
    @IBAction func logInButtonPressed() {
        if userNameTextField.text == "Lex", passwordTextField.text == "Swiftbook" {
            performSegue(withIdentifier: "toWelcomeVC", sender: self)
        } else {
            let alert = UIAlertController(title: "Invalid login or password", message: "Please, enter correct login and password", preferredStyle: .alert)
            let alertAction = UIAlertAction(title: "OK", style: .default) { _ in
                self.passwordTextField.text = ""
            }
            alert.addAction(alertAction)
            present(alert, animated: true, completion: nil)
        }
    }
    
    @IBAction func remindNameButton() {
        setupAlert(message: "Your name is Lex 😉")
    }
    
    @IBAction func remindPasswordButton() {
        setupAlert(message: "Your password is Swiftbook 😉")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard let _ = segue.source as? WelcomeViewController else { return }
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    // MARK: - methods
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        guard let userName = userNameTextField.text else { return }
        welcomeVC.userName = userName
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        userNameTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
    }
    
    private func setupAlert(message: String) {
        let alert = UIAlertController(title: "Oops!", message: message, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(alertAction)
        present(alert, animated: true, completion: nil)
    }
}

