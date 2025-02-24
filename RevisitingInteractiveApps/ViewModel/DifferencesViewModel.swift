//
//  DifferencesViewModel.swift
//  RevisitingInteractiveApps
//
//  Created by Julien Hwang on 24/2/2025.
//


import Foundation

@Observable
class DifferencesViewModel {
    
    var providedFirstNumber: String
    var providedSecondNumber: String
    var recoverySuggestion: String
    
    var differences: Differences? {
        guard let firstNumber = Int(providedFirstNumber), firstNumber != Int() else {
            recoverySuggestion = "Please provide a numeric value for the first number"
            
            return nil
        }
        
        guard let secondNumber = Int(providedSecondNumber), secondNumber != Int() else {
            recoverySuggestion = "Please provide a numeric value for the second number"
            
            return nil
        }
        
        recoverySuggestion = ""
        return Differences(firstNumber: firstNumber, secondNumber: secondNumber)
    }
    
    //MARK: Initializers
    init(
        firstNumber: String = "",
        secondNumber: String = "",
        recoverySuggestion: String = ""
    ) {
        self.providedFirstNumber = firstNumber
        self.providedSecondNumber = secondNumber
        self.recoverySuggestion = recoverySuggestion
    }
}
