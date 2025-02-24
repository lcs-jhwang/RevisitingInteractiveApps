//
//  DifferencesView.swift
//  RevisitingInteractiveApps
//
//  Created by Julien Hwang on 21/2/2025.
//

import SwiftUI

struct DifferencesView: View {
    
    //MARK: Stored properties
    @State var viewModel = DifferencesViewModel()
    
    //MARK: Computed properties
    
    
    var body: some View {
        VStack{
            if let differences = viewModel.differences {
                HStack{
                    Spacer()
                    Text("\(differences.firstNumber)")
                        .font(.system(size: 96))
                        .padding()
                }
                
                HStack{
                    Spacer()
                    Text("\(differences.secondNumber)")
                        .font(.system(size: 96))
                        .padding()
                    
                }
                HStack{
                    Text("-")
                        .font(.system(size: 96))
                        .padding()
                    Spacer()
                    Text("\(differences.result)")
                        .font(.system(size: 96))
                        .padding()
                }
                
            }
            else {
                // Show content unavailable view
                ContentUnavailableView("Unable to calculate", systemImage: "sun", description: Text(viewModel.recoverySuggestion))
            }
            
            
            TextField("Enter first number", text: $viewModel.providedFirstNumber)
                .padding()
                .font(.system(size: 40))
            
            TextField("Enter second number", text: $viewModel.providedSecondNumber)
                .padding()
                .font(.system(size: 40))
        }
    }
}

#Preview {
    DifferencesView()
}
