//
//  FoodBrain.swift
//  FoodCombinations
//
//  Created by João Victor Fernandes on 28/03/25.
//

import Foundation

struct FoodBrain {
    let foodCombinations: [Food] = [
        Food(
            title: "Escolha a refeição",
            option1: "Breakfast",
            option2: "Lunch",
            option3: "Dinner",
            option1Destiniation: 1,
            option2Destiniation: 4,
            option3Destiniation: 7
        ),
        // Opções para o Café da Manhã
        Food(
            title: "Breakfast Options",
            option1: "Pancakes",
            option2: "Omelette",
            option3: "Smoothie",
            option1Destiniation: 2,
            option2Destiniation: 2,
            option3Destiniation: 2
        ),
        Food(
            title: "Breakfast Sides",
            option1: "Bacon",
            option2: "Toast",
            option3: "Fruit Salad",
            option1Destiniation: 3,
            option2Destiniation: 3,
            option3Destiniation: 3
        ),
        Food(
            title: "Breakfast Drinks",
            option1: "Coffee",
            option2: "Tea",
            option3: "Orange Juice",
            option1Destiniation: 0,  // Fim
            option2Destiniation: 0,  // Fim
            option3Destiniation: 0   // Fim
        ),
        // Opções para o Almoço
        Food(
            title: "Lunch Options",
            option1: "Burger",
            option2: "Salad",
            option3: "Pasta",
            option1Destiniation: 5,
            option2Destiniation: 5,
            option3Destiniation: 5
        ),
        Food(
            title: "Lunch Sides",
            option1: "Fries",
            option2: "Garlic Bread",
            option3: "Coleslaw",
            option1Destiniation: 6,
            option2Destiniation: 6,
            option3Destiniation: 6
        ),
        Food(
            title: "Lunch Drinks",
            option1: "Soda",
            option2: "Iced Tea",
            option3: "Water",
            option1Destiniation: 0,  // Fim
            option2Destiniation: 0,  // Fim
            option3Destiniation: 0   // Fim
        ),
        // Opções para o Jantar
        Food(
            title: "Dinner Options",
            option1: "Steak",
            option2: "Fish",
            option3: "Vegetable Stir Fry",
            option1Destiniation: 8,
            option2Destiniation: 8,
            option3Destiniation: 8
        ),
        Food(
            title: "Dinner Sides",
            option1: "Mashed Potatoes",
            option2: "Steamed Vegetables",
            option3: "Rice",
            option1Destiniation: 9,
            option2Destiniation: 9,
            option3Destiniation: 9
        ),
        Food(
            title: "Dinner Drinks",
            option1: "Red Wine",
            option2: "White Wine",
            option3: "Sparkling Water",
            option1Destiniation: 0,  // Fim
            option2Destiniation: 0,  // Fim
            option3Destiniation: 0   // Fim
        ),
    ]
    
    var foodOptionsNumber = 0
    
    mutating func nextFoodOptions(_ userChoice: String) -> Int {
        print("userChoice: ", userChoice)
        let foodOption = foodCombinations[foodOptionsNumber]
        
        print("foodOption: ", foodOption)
        
        if (userChoice == foodOption.option1) {
            foodOptionsNumber = foodOption.option1Destiniation
        } else if (userChoice == foodOption.option2) {
            foodOptionsNumber = foodOption.option2Destiniation
        } else {
            foodOptionsNumber = foodOption.option3Destiniation
        }
        
        return foodOptionsNumber
    }
}
