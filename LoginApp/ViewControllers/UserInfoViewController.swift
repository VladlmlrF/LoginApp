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

    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        personImageView.image = UIImage(named: user.person.personImage)
        personImageView.layer.cornerRadius = 20
        fullnameLabel.text = user.person.fullname
        ageLabel.text = user.person.age + " years old"
        hobbyLabel.text = "My hobby is " + user.person.hobby
    }

}
