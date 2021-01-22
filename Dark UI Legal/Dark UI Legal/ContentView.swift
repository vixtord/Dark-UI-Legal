//
//  ContentView.swift
//  Dark UI Legal
//
//  Created by Victor S. Duarte on 22/01/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            // Título da Barra de Navegação
            HStack {
                Text("Trilha")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal)
                    .padding(.top)
                    .foregroundColor(Color("wideDinamic"))
                
                Spacer()
            }
            .padding(.vertical, 32)
            
            // Título e subtítulo do tópico
            Text("NOSSA PRIMEIRA VIAGEM")
                .font(.callout)
                .foregroundColor(Color("actionColor"))
            
            Text("Relacionamentos")
                .font(.title)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .foregroundColor(Color("wideDinamic"))
            
            // Composição da imagem
            VStack {
                ZStack {
                    Image("fundo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .shadow(color: Color("wideStatic").opacity(0.8), radius: 10)
                    
                    // Esta imagem é dinâmica, verifique nos Assets
                    Image("localNoEspaço")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .shadow(color: Color("wideStatic").opacity(0.8), radius: 10)
                }
                .padding(.horizontal, 32)
                
                // "Botão"
                HStack (spacing: -30) {
                    Capsule().foregroundColor(Color("actionColor"))
                        .overlay(
                            Text ("Viajar pelo planeta")
                                .foregroundColor(.white))
                        .frame(width: 230, height: 44)
                        .shadow(color: Color("actionColor")
                                    .opacity(0.8), radius: 10)
                    Image("naveEspacial").resizable().aspectRatio(contentMode: .fit).frame(width: 70, height: 70, alignment: .topLeading)
                        .shadow(color: Color("actionColor").opacity(0.8), radius: 10)
                        .padding(.leading, -15)
                    
                }
            }
            
            Spacer()
        }
        // Cor de fundo
        .background(Color("backgroundDinamic")
                        .ignoresSafeArea())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
                .preferredColorScheme(.dark)
        }
    }
}
