//
//  LoginView.swift
//  HeroMultiPlatform
//
//  Created by IsaDevs on 15/3/23.
//

import SwiftUI

struct LoginView: View {
    
    // definición de los valores iniciales de la intrerface
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        //pantalla
        ZStack{
            Image(decorative: "backgroundLogin")
                .resizable()
                .opacity(1)
            
            Image(decorative: "")
                .resizable()
                .background(Color.black)
                .opacity(0.2)
            
            VStack{
                Image(decorative: "title")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300)
                    .opacity(0.8)
                    .padding(.top, 170)
                
                Spacer()
                
                VStack{
                    TextField("Email", text:  $email) // binding con el dolar
                        .padding(10)
                        .foregroundColor(.blue)
                        .background(.white)
                        .cornerRadius(20.0)
                        .shadow(radius: 10.0, x:20, y:10)
                        //.autocapitalization(.none)  //ios 15
                        .textInputAutocapitalization(.none) // ios 16
                        .autocorrectionDisabled() // ios16
                        .opacity(0.8)
                        .id(1) // for ui test
                    
                    //
                    SecureField("Password", text:  $password) // binding con el dolar
                        .padding(10)
                        .foregroundColor(.blue)
                        .background(.white)
                        .cornerRadius(20.0)
                        .shadow(radius: 10.0, x:20, y:10)
                        //.autocapitalization(.none)  //ios 15
                        .textInputAutocapitalization(.none) // ios 16
                        .autocorrectionDisabled() // ios16
                        .opacity(0.8)
                        // padding en relación del elemento de arriba
                        .padding(.top, 15)
                        .id(2) // for ui test
                    
                    //BUTTON
                    Button {
                        
                    } label: {
                        Text("Entrar")
                            .font(.title)
                            .foregroundColor(.white)
                            .padding(.top)
                            .frame(width: 300, height: 50)
                            .background(.red)
                            .cornerRadius(15)
                            .shadow(radius: 10.0, x:20, y:10)
                    }
                    .padding(.top, 50)
                    .opacity(0.8)
                    .id(3)
                }
                // constraint con paddin
                .padding([.leading, .trailing], 30)
                
                Spacer()
                
            }
        }
    
        .ignoresSafeArea()
    }
}

// EN LA PREVIEW SE DEBEN DE VER LOS IDIOMAS
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
            .environment(\.locale, .init(identifier: "es"))
       /* LoginView()
            .environment(\.locale, .init(identifier: "en"))
        LoginView()
            .environment(\.locale, .init(identifier: "it"))*/
    }
}
