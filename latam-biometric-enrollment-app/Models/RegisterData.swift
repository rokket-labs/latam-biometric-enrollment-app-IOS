//
//  RegisterData.swift
//  latam-biometric-enrollment-app
//
//  Created by Nicolas Perez on 09-03-20.
//  Copyright © 2020 Nicolas Perez. All rights reserved.
//

import Combine

final class RegisterData:ObservableObject {
    @Published var country: String = "Chile"
    @Published var licence: Bool = false
    @Published var passport: Bool = false
    @Published var idCard: Bool = true
}

