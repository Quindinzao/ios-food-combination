//
//  ViewController.swift
//  FoodCombinations
//
//  Created by João Victor Fernandes on 27/03/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var myView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var titleLabelView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = myView.bounds

        gradientLayer.colors = [
            UIColor(named: "MainColor")?.cgColor ?? UIColor.clear.cgColor,
            UIColor(named: "BackgroundColor")?.cgColor ?? UIColor.clear.cgColor
        ]
        
        myView.layer.insertSublayer(gradientLayer, at: 0)
        
        titleLabelView.layer.cornerRadius = 20
    }
}
