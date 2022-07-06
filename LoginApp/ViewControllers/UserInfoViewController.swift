//
//  UserInfoViewController.swift
//  LoginApp
//
//  Created by Владимир Фалин on 05.07.2022.
//

import UIKit

class UserInfoViewController: UIViewController {

    @IBOutlet weak var personImageView: UIImageView!
    
    @IBOutlet weak var fullnameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var hobbyLabel: UILabel!
    
    var imageName = ""
    var fullname = ""
    var age = ""
    var hobby = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        personImageView.image = UIImage(named: imageName)
        personImageView.layer.cornerRadius = 20
        
        fullnameLabel.text = fullname
        
        ageLabel.text = age + " years old"
        
        hobbyLabel.text = "My hobby is " + hobby
    }

}
