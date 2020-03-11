//
//  NetverifyComponent.swift
//  latam-biometric-enrollment-app
//
//  Created by Nicolas Perez on 10-03-20.
//  Copyright © 2020 Nicolas Perez. All rights reserved.
//

import SwiftUI
import Netverify

struct NetverifyComponent: UIViewControllerRepresentable {

    func makeUIViewController(context: UIViewControllerRepresentableContext<NetverifyComponent>) -> NetverifyComponent.NetverifyViewControllerDelegate {
        <#code#>
    }
    
    func createNetverifyConfiguration() -> NetverifyConfiguration {
        let config:NetverifyConfiguration = NetverifyConfiguration()
       
        config.apiToken = "YOUR_NETVERIFY_APITOKEN"
        config.apiSecret = "YOUR_NETVERIFY_APISECRET"
        config.enableVerification = true
        config.enableIdentityVerification = true
        
        return config
    }
    
}
