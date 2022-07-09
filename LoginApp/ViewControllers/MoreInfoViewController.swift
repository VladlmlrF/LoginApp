//
//  MoreInfoViewController.swift
//  LoginApp
//
//  Created by Владимир Фалин on 05.07.2022.
//

import UIKit

class MoreInfoViewController: UIViewController {

    @IBOutlet weak var indonesiaImageView: UIImageView!
    @IBOutlet weak var myanmarImageView: UIImageView!
    @IBOutlet weak var indiaImageView: UIImageView!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupImageView(imageView: indonesiaImageView, image: user.person.firstFavoriteСountrieImage)
        setupImageView(imageView: myanmarImageView, image: user.person.secondFavoriteСountrieImage)
        setupImageView(imageView: indiaImageView, image: user.person.thirdFavoriteСountrieImage)
    }

    private func setupImageView(imageView: UIImageView, image: String) {
        imageView.image = UIImage(named: image)
        imageView.layer.cornerRadius = 15
    }
}
