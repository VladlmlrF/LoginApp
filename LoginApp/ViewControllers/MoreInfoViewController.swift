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
    
    var indonesia = ""
    var myanmar = ""
    var india = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupImageView(imageView: indonesiaImageView, image: indonesia)
        setupImageView(imageView: myanmarImageView, image: myanmar)
        setupImageView(imageView: indiaImageView, image: india)
    }

    private func setupImageView(imageView: UIImageView, image: String) {
        imageView.image = UIImage(named: image)
        imageView.layer.cornerRadius = 15
    }
}
