//
//  Slide2.swift
//  latam-biometric-enrollment-app
//
//  Created by Nicolas Perez on 09-03-20.
//  Copyright © 2020 Nicolas Perez. All rights reserved.
//

import SwiftUI

struct Slide2: View {
    
    var body: some View {
        GeometryReader { reader in
        ZStack{
                LinearGradient(gradient: .init(colors: [Color(#colorLiteral(red: 0.7335723639, green: 0.7335723639, blue: 0.7335723639, alpha: 1)),.white]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
            
                VStack{
                        HStack {
                            Image("logo").padding(.vertical)
                            Spacer()
                            HStack {
                                Circle().fill(Color.gray).frame(width: 7, height: 7)
                                RoundedRectangle(cornerRadius: 25, style: .continuous).fill(Color(#colorLiteral(red: 239/255, green: 21/255, blue: 81/255, alpha: 1))).frame(width: 22, height: 7).shadow(color: .red, radius: 2, x: 1, y: 1)
                                Circle().fill(Color.gray).frame(width: 7, height: 7)
                                Circle().fill(Color.gray).frame(width: 7, height: 7)
                            }
                        }.padding(.horizontal, reader.size.width * 0.07)
                    RoundedRectangle(cornerRadius: 0, style: .continuous).fill(Color.black).frame(width: reader.size.width, height: reader.size.height * 0.45)
                    
                    Spacer()
                    
                    Text("Saca una foto de frente de tu ID").fontWeight(.bold)
                    .foregroundColor(Color(#colorLiteral(red: 56/255, green: 90/255, blue: 248/255, alpha: 1)))
                        .multilineTextAlignment(.center).font(.custom("LatamSansST-Regular", size: reader.size.height*0.04)).padding([.leading, .trailing], 40).padding(.vertical, reader.size.height * 0.025)
                    Text("Asegúrate de tener buena iluminación y ajusta hasta que el frente del documento encaje con el borde y presiona el botón").multilineTextAlignment(.center)
                    .font(.custom("LatamSansST-Regular", size: reader.size.height*0.025))
                    .padding(.all).foregroundColor(Color.black)
                    ZStack {
                        Circle().fill(Color(#colorLiteral(red: 239/255, green: 21/255, blue: 81/255, alpha: 1))).frame(width: reader.size.width * 0.18).shadow(color: .black, radius: 2, x: 1, y: 1)
                        Image(systemName: "camera.fill").foregroundColor(Color.white).font(.system(size: 25))
                    }
                }
            }
        }
    }
}

struct Slide2_Previews: PreviewProvider {
    static var previews: some View {
        Slide2()
    }
}
