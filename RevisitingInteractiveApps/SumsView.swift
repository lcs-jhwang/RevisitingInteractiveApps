//
//  SumsView.swift
//  RevisitingInteractiveApps
//
//  Created by Julien Hwang on 21/2/2025.
//

import SwiftUI

struct SumsView: View {
    
    //MARK: Stored properties
    @State var firstNumber: Int = 1
    @State var secondNumber: Int = 2
    
    //MARK: Computed properties
    
    var sum: Int{
        return firstNumber + secondNumber
    }
    
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Text("\(firstNumber)")
                    .font(.system(size: 96))
                    .padding()
            }
            Stepper(value: $firstNumber, label: {
                Text("First Number")
            })
            HStack{
                Spacer()
                Text("\(secondNumber)")
                    .font(.system(size: 96))
                    .padding()
            }
            Stepper(value: $secondNumber, label: {
                Text("Second Number")
            })
            
            HStack{
                Spacer()
                Text("\(sum)")
                    .font(.system(size: 96))
                    .padding()
            }
            
        }
    }
}

#Preview {
    SumsView()
}
