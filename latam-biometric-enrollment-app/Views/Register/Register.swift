//
//  Register.swift
//  latam-biometric-enrollment-app
//
//  Created by Nicolas Perez on 05-03-20.
//  Copyright © 2020 Nicolas Perez. All rights reserved.
//

import SwiftUI
import SwiftUIPager

struct Register: View {
    @State var slide: Int = 1
    @ObservedObject var registerData = RegisterData()
    var body: some View {
        VStack {
            if( slide == 1 ){
                Slide1(country: self.$registerData.country, licence: self.$registerData.licence, passport: self.$registerData.passport, idCard: self.$registerData.idCard, slide: self.$slide )
            } else {
                Slide2()
            }
        }
    }
}

struct Register_Previews: PreviewProvider {
    static var previews: some View {
        Register()
    }
}
