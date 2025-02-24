//
//  SumsView.swift
//  RevisitingInteractiveApps
//
//  Created by Julien Hwang on 21/2/2025.
//

import SwiftUI

struct SumsView: View {
    
    //MARK: Stored properties
    @State var viewModel = SumsViewModel()
    
    //MARK: Computed properties
    
    
    var body: some View {
        VStack{
            if let sum = viewModel.sum {
                HStack{
                    Spacer()
                    Text("\(sum.firstNumber)")
                        .font(.system(size: 96))
                        .padding()
                }
                
                HStack{
                    Spacer()
                    Text("\(sum.secondNumber)")
                        .font(.system(size: 96))
                        .padding()
                    
                }
                HStack{
                    Text("+")
                        .font(.system(size: 96))
                        .padding()
                    Spacer()
                    Text("\(sum.result)")
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
    SumsView()
}
