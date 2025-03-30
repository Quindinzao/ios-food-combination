//
//  Food.swift
//  FoodCombinations
//
//  Created by João Victor Fernandes on 28/03/25.
//

import Foundation

struct Food {
    let title: String
    let option1: String
    let option2: String
    let option3: String
    let option1Destiniation: Int
    let option2Destiniation: Int
    let option3Destiniation: Int
    
    init(
        title: String,
        option1: String,
        option2: String,
        option3: String,
        option1Destiniation: Int,
        option2Destiniation: Int,
        option3Destiniation: Int
    ) {
        self.title = title
        self.option1 = option1
        self.option2 = option2
        self.option3 = option3
        self.option1Destiniation = option1Destiniation
        self.option2Destiniation = option2Destiniation
        self.option3Destiniation = option3Destiniation
    }
}
