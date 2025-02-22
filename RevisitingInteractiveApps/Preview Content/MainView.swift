//
//  MainView.swift
//  RevisitingInteractiveApps
//
//  Created by Julien Hwang on 21/2/2025.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView(selection: Binding.constant(1)) {
            
            SquaredView()
                .tabItem {
                    Image(systemName: "square.fill.on.square.fill")
                    Text("Squared")
                }
                .tag(1)
            
            SumsView()
                .tabItem {
                    Image(systemName: "plus")
                    Text("Plus")
                }
                .tag(2)
                DifferencesView()
                .tabItem {
                    Image(systemName: "minus")
                    Text("Minus")
                }
                .tag(3)
 
        }
    }
}

#Preview {
    MainView()
}
