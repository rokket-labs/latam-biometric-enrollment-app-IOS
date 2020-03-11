//
//  Register.swift
//  latam-biometric-enrollment-app
//
//  Created by Nicolas Perez on 05-03-20.
//  Copyright © 2020 Nicolas Perez. All rights reserved.
//

import SwiftUI
import SwiftUIPager

struct Slide1: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var selectCountryMode: Bool = false
    @Binding var country: String
    @Binding var licence: Bool
    @Binding var passport: Bool
    @Binding var idCard: Bool
    @Binding var slide: Int
    
    static let options = [
        DropdownOption(key: "0", val: "Chile"), DropdownOption(key: "1", val: "España"), DropdownOption(key: "2", val: "Perú")
    ]

    static let onSelect = { key in
        print(key)
    }
    
    
    func handleCheckbox(_ option: String) {
        if (option == "licence") {
            self.licence = true
            self.passport = false
            self.idCard = false
        } else if(option == "passport") {
            self.licence = false
            self.passport = true
            self.idCard = false
        } else {
            self.licence = false
            self.passport = false
            self.idCard = true
        }
    }

    var body: some View {
        
            GeometryReader { reader in
            ZStack{
                    LinearGradient(gradient: .init(colors: [Color(#colorLiteral(red: 0.7335723639, green: 0.7335723639, blue: 0.7335723639, alpha: 1)),.white]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
                
                    VStack{
                            HStack {
                                Image("logo").padding(.vertical)
                                Spacer()
                                HStack {
                                    RoundedRectangle(cornerRadius: 25, style: .continuous).fill(Color(#colorLiteral(red: 239/255, green: 21/255, blue: 81/255, alpha: 1))).frame(width: 22, height: 7).shadow(color: .red, radius: 2, x: 1, y: 1)
                                    Circle().fill(Color.gray).frame(width: 7, height: 7)
                                    Circle().fill(Color.gray).frame(width: 7, height: 7)
                                    Circle().fill(Color.gray).frame(width: 7, height: 7)
                                }
                            }.padding(.horizontal, reader.size.width * 0.07)
                        
                        if self.selectCountryMode {
                            VStack {
                                Text("Selecciona el tipo de documento")
                                .fontWeight(.bold)
                                .foregroundColor(Color(#colorLiteral(red: 56/255, green: 90/255, blue: 248/255, alpha: 1)))
                                    .multilineTextAlignment(.center).font(.custom("LatamSansST-Regular", size: reader.size.height*0.04)).padding([.leading, .trailing]).padding(.vertical, reader.size.height * 0.025)
                                HStack {
                                    Group {
                                        VStack(alignment: .leading) {
                                            DropdownButton(displayText: .constant("País: "+self.country), options: Slide1.options, onSelect: Slide1.onSelect)
                                        }
                                        .frame(maxWidth: reader.size.width, maxHeight: 10)
                                        .background(Color.black.opacity(0))
                                        .foregroundColor(Color.black)
                                    }.padding(.bottom, reader.size.height * 0.03)
                                    
                                }.padding(.horizontal, reader.size.width * 0.05)
                                Divider().padding(.horizontal, reader.size.width * 0.07)
                                HStack {
                                    Text("Licencia de conducir").padding(.vertical, 5).foregroundColor(Color.black).font(.custom("LatamSansST-Regular", size: reader.size.width * 0.04))
                                    Spacer()
                                    Button(action: {self.handleCheckbox("licence")}) {
                                        if(self.licence){
                                            ZStack {
                                            Circle()
                                            .overlay(
                                                Circle()
                                               .stroke(Color(#colorLiteral(red: 56/255, green: 90/255, blue: 248/255, alpha: 1)),lineWidth: 3)
                                            ).foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0))).frame(width: 20, height: 20)
                                            Circle().frame(width: 10, height: 10).foregroundColor(Color(#colorLiteral(red: 56/255, green: 90/255, blue: 248/255, alpha: 1)))
                                            }

                                        } else {
                                            Circle()
                                            .overlay(
                                                Circle()
                                               .stroke(Color.gray,lineWidth: 3)
                                            ).foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0))).frame(width: 20, height: 20)
                                        }
                                      
                                    }
                                }.padding(.horizontal, reader.size.width * 0.08)
                                Divider().padding(.horizontal, reader.size.width * 0.07)
                                HStack {
                                    Text("Pasaporte").padding(.vertical, 5).foregroundColor(Color.black).font(.custom("LatamSansST-Regular", size: reader.size.width * 0.04))
                                    Spacer()
                                    Button(action: {self.handleCheckbox("passport")}) {
                                        if(self.passport){
                                            ZStack {
                                            Circle()
                                            .overlay(
                                                Circle()
                                               .stroke(Color(#colorLiteral(red: 56/255, green: 90/255, blue: 248/255, alpha: 1)),lineWidth: 3)
                                            ).foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0))).frame(width: 20, height: 20)
                                            Circle().frame(width: 10, height: 10).foregroundColor(Color(#colorLiteral(red: 56/255, green: 90/255, blue: 248/255, alpha: 1)))
                                            }

                                        } else {
                                            Circle()
                                            .overlay(
                                                Circle()
                                               .stroke(Color.gray,lineWidth: 3)
                                            ).foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0))).frame(width: 20, height: 20)
                                        }
                                    }
                                }.padding(.horizontal, reader.size.width * 0.08)
                                Divider().padding(.horizontal, reader.size.width * 0.07)
                                HStack {
                                    Text("Carnet de identidad").padding(.vertical, 5).foregroundColor(Color.black).font(.custom("LatamSansST-Regular", size: reader.size.width * 0.04))
                                    Spacer()
                                    Button(action: {self.handleCheckbox("idCard")}) {
                                        if(self.idCard){
                                            ZStack {
                                                Circle()
                                                .overlay(
                                                    Circle()
                                                   .stroke(Color(#colorLiteral(red: 56/255, green: 90/255, blue: 248/255, alpha: 1)),lineWidth: 3)
                                                ).foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0))).frame(width: 20, height: 20)
                                                Circle().frame(width: 10, height: 10).foregroundColor(Color(#colorLiteral(red: 56/255, green: 90/255, blue: 248/255, alpha: 1)))
                                            }
                                            
                                        } else {
                                            Circle()
                                            .overlay(
                                                Circle()
                                                    .stroke(Color.gray,lineWidth: 3)
                                            ).foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0))).frame(width: 20, height: 20)
                                        }
                                    }
                                    
                                }.padding(.horizontal, reader.size.width * 0.08)
                                
                               Spacer()
                                VStack {
                                    HStack {
                                            Image(systemName: "lock.fill").foregroundColor(Color(#colorLiteral(red: 56/255, green: 90/255, blue: 248/255, alpha: 1))).padding(.bottom,5)
                                        Text("La información entregada es almacenada de forma segura y no es compartida con terceros").font(.custom("LatamSansST-Regular", size: 10)).foregroundColor(Color.gray).multilineTextAlignment(.center).fixedSize(horizontal: false, vertical: true).padding(.bottom,5)
                                    }.padding(.horizontal, 60.0)
                                    HStack {
                                        
                                        Button(action: { withAnimation {
                                           self.selectCountryMode.toggle()
                                        } }) {
                                            Text("Volver").foregroundColor(Color.gray).padding().font(.custom("LatamSansST-Regular", size: reader.size.height*0.025))
                                        }.frame(width: reader.size.width * 0.4 ).background(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0))).overlay(
                                            RoundedRectangle(cornerRadius: 30)
                                                .stroke(Color.gray, lineWidth: 3)
                                        )
                                        Button(action: {
                                            withAnimation {
                                            self.slide = self.slide + 1
                                            }
                                        }) {
                                            Text("Siguiente").foregroundColor(Color.white).padding().frame(width: reader.size.width * 0.4 ).font(.custom("LatamSansST-Regular", size: reader.size.height*0.025))
                                        }.background(Color(#colorLiteral(red: 56/255, green: 90/255, blue: 248/255, alpha: 1))).cornerRadius(30)
                                    }
                                }.padding(.bottom)
                            }
                            
                        }else {
                            HStack {
                                    Spacer()
                                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                                        Text("¿Cómo funciona?").foregroundColor(Color.black).padding(.all, 10.0).font(.custom("LatamSansST-Regular", size: reader.size.height*0.02)).background(Color.white).cornerRadius(25)
                                    }.padding([.bottom, .trailing], reader.size.width * 0.06)
                                }
                                Text("Agrega tu documento de identidad")
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.blue)
                                    .multilineTextAlignment(.center).font(.custom("LatamSansST-Regular", size: reader.size.height*0.04)).padding(.horizontal)
                                Text("Esto nos ayudará a determinar que realmente eres tu. La verificación de identidad es una de las formas que usamos para mantener tu cuenta segura")
                                    .multilineTextAlignment(.center)
                                    .font(.custom("LatamSansST-Regular", size: reader.size.height*0.025))
                                    .padding(.all).foregroundColor(Color.black)
                                
                                Image("phoneHandSvg").resizable().frame(width: reader.size.width * 0.4, height: reader.size.height * 0.3).padding(.top, 40)
                                
                                
                                Spacer()
                                
                                VStack {
                                    HStack {
                                            Image(systemName: "lock.fill").foregroundColor(Color(#colorLiteral(red: 56/255, green: 90/255, blue: 248/255, alpha: 1))).padding(.bottom,5)
                                        Text("La información entregada es almacenada de forma segura y no es compartida con terceros").font(.custom("LatamSansST-Regular", size: 10)).foregroundColor(Color.gray).multilineTextAlignment(.center).fixedSize(horizontal: false, vertical: true).padding(.bottom,5)
                                    }.padding(.horizontal, 60.0)
                                    HStack {
                                        
                                        Button(action: { self.presentationMode.wrappedValue.dismiss() }) {
                                            Text("Volver").foregroundColor(Color.gray).padding().font(.custom("LatamSansST-Regular", size: reader.size.height*0.025))
                                        }.frame(width: reader.size.width * 0.4 ).background(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0))).overlay(
                                            RoundedRectangle(cornerRadius: 30)
                                                .stroke(Color.gray, lineWidth: 3)
                                        )
                                        Button(action: {
                                            withAnimation {
                                               self.selectCountryMode.toggle()
                                            }
                                        }) {
                                            Text("Siguiente").foregroundColor(Color.white).padding().frame(width: reader.size.width * 0.4 ).font(.custom("LatamSansST-Regular", size: reader.size.height*0.025))
                                        }.background(Color(#colorLiteral(red: 56/255, green: 90/255, blue: 248/255, alpha: 1))).cornerRadius(30)
                                    }
                                }.padding(.bottom)
                        }
                        
                    }
                    
                }
            }
                
            
        }
            
        
    }

//
//struct Slide1_Previews: PreviewProvider {
//    @Binding var country: String
//    @Binding var licence: Bool
//    @Binding var passport: Bool
//    @Binding var idCard: Bool
//
//    static var previews: some View {
//        Slide1(country: self.$country, licence: self.$licence, passport: self.$passport, idCard: self.$idCard )
//    }
//}
