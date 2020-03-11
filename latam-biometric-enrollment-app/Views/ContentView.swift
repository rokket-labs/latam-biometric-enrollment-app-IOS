//
//  ContentView.swift
//  latam-biometric-enrollment-app
//
//  Created by Nicolas Perez on 05-03-20.
//  Copyright © 2020 Nicolas Perez. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
       NavigationView {
        Home().padding(.top)
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        .edgesIgnoringSafeArea(.all)
        }.navigationViewStyle(StackNavigationViewStyle())
    }
        
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
