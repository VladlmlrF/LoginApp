//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Владимир Фалин on 01.07.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!
    
    var userName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        welcomeLabel.text = "Welcome, " + userName + "!"
    }

}
