//
//  SumsViewModel.swift
//  RevisitingInteractiveApps
//
//  Created by Julien Hwang on 23/2/2025.
//

import Foundation

@Observable
class SumsViewModel {
    
    var providedFirstNumber: String
    var providedSecondNumber: String
    var recoverySuggestion: String
    
    var sum: Sum? {
        guard let firstNumber = Int(providedFirstNumber), firstNumber != Int() else {
            recoverySuggestion = "Please provide a numeric value for the first number"
            
            return nil
        }
        
        guard let secondNumber = Int(providedSecondNumber), secondNumber != Int() else {
            recoverySuggestion = "Please provide a numeric value for the second number"
            
            return nil
        }
        
        recoverySuggestion = ""
        return Sum(firstNumber: firstNumber, secondNumber: secondNumber)
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
