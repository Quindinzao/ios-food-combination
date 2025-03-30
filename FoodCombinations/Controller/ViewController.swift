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
    @IBOutlet weak var optionOne: UIButton!
    @IBOutlet weak var optionTwo: UIButton!
    @IBOutlet weak var optionThree: UIButton!
    
    var foodBrain = FoodBrain()
    
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
        optionOne.layer.cornerRadius = 18
        optionTwo.layer.cornerRadius = 18
        optionThree.layer.cornerRadius = 18
        
        updateUI(nextFoodNumber: 0)
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        let chooseFoodNumber = sender.titleLabel!.text!
        print("chooseFoodNumber", chooseFoodNumber)
        let nextFoodNumber = foodBrain.nextFoodOptions(chooseFoodNumber)
        print("nextFoodNumber", nextFoodNumber)
        updateUI(nextFoodNumber: nextFoodNumber)
    }
    
    func updateUI(nextFoodNumber: Int) {
        let buttonOptions = foodBrain.foodCombinations[nextFoodNumber]
        optionOne.setTitle(buttonOptions.option1, for: .normal)
        optionTwo.setTitle(buttonOptions.option2, for: .normal)
        optionThree.setTitle(buttonOptions.option3, for: .normal)
        titleLabel.text = buttonOptions.title
    }
}
