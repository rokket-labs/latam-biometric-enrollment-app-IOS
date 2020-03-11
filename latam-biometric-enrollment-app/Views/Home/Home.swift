//
//  Home.swift
//  latam-biometric-enrollment-app
//
//  Created by Nicolas Perez on 06-03-20.
//  Copyright © 2020 Nicolas Perez. All rights reserved.
//

import SwiftUI

struct Home: View {
    
    var body: some View {
            
            GeometryReader { reader in
                ZStack{
                        LinearGradient(gradient: .init(colors: [Color(#colorLiteral(red: 0.7335723639, green: 0.7335723639, blue: 0.7335723639, alpha: 1)),.white]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
                        
                        VStack{
                                HStack {
                                    Image("logo").padding()
                                    Spacer()
                                }.padding(.horizontal, 50)
                            Image("womanSvg")
                            
                            Text("Verifica tu cuenta y accede a beneficios y nuevas experiencias").font(.custom("LatamSansST-Regular", size: reader.size.height*0.022)).multilineTextAlignment(.center).fixedSize(horizontal: false, vertical: true).padding(.horizontal, 40).foregroundColor(.black)
                            VStack(alignment: .leading) {
                                HStack {
                                    Circle().fill(Color(#colorLiteral(red: 239/255, green: 21/255, blue: 81/255, alpha: 1))).frame(width: 7, height: 7)
                                    Text("Protección de tu cuenta LATAM Pass").font(.custom("LatamSansST-Regular", size: reader.size.height*0.022)).foregroundColor(.black)
                                }
                                HStack {
                                    Circle().fill(Color(#colorLiteral(red: 239/255, green: 21/255, blue: 81/255, alpha: 1))).frame(width: 7, height: 7)
                                    Text("Suman de millas pendientes LATAM Pass").font(.custom("LatamSansST-Regular", size: reader.size.height*0.022)).foregroundColor(.black)
                                }
                                HStack {
                                    Circle().fill(Color(#colorLiteral(red: 239/255, green: 21/255, blue: 81/255, alpha: 1))).frame(width: 7, height: 7)
                                    Text("Embarque biométrico preferente").font(.custom("LatamSansST-Regular", size: reader.size.height*0.022)).foregroundColor(.black)
                                    Text("En pruebas").padding(3).background(Color(#colorLiteral(red: 239/255, green: 21/255, blue: 81/255, alpha: 1))).foregroundColor(.white).font(.custom("LatamSansST-Regular", size: reader.size.height*0.012)).cornerRadius(25)
                                }
                                HStack {
                                    Circle().fill(Color(#colorLiteral(red: 239/255, green: 21/255, blue: 81/255, alpha: 1))).frame(width: 7, height: 7)
                                    Text("Ingreso biométrico a salones VIP").font(.custom("LatamSansST-Regular", size: reader.size.height*0.022)).foregroundColor(.black)
                                    Text("En pruebas").padding(3).background(Color(#colorLiteral(red: 239/255, green: 21/255, blue: 81/255, alpha: 1))).foregroundColor(.white).font(.custom("LatamSansST-Regular", size: reader.size.height*0.012)).cornerRadius(25)
                                }
                            }.padding(.top)
                            
                            
                            Spacer()
                        
                            VStack {
                                HStack {
                                        Image(systemName: "lock.fill").foregroundColor(Color(#colorLiteral(red: 56/255, green: 90/255, blue: 248/255, alpha: 1))).padding(.bottom,5)
                                    Text("La información entregada es almacenada de forma segura y no es compartida con terceros").font(.custom("LatamSansST-Regular", size: 10)).foregroundColor(Color.gray).multilineTextAlignment(.center).fixedSize(horizontal: false, vertical: true).padding(.bottom,5)
                                }.padding(.horizontal, 80)
                                NavigationLink(destination: Register()) {
                                    Text("Comenzar").foregroundColor(Color.white).padding(.horizontal, 100).font(.custom("LatamSansST-Regular", size: reader.size.height*0.025))
                                }.padding().background(Color(#colorLiteral(red: 56/255, green: 90/255, blue: 248/255, alpha: 1))).cornerRadius(30)
                            }.padding(.bottom)
                        }
                        
                    }
                }
        
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
