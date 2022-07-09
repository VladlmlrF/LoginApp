//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Владимир Фалин on 01.07.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!

    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        welcomeLabel.text = "Welcome, " + user.person.fullname + "!"
    }

}
