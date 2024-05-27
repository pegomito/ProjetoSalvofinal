//
//  SelectView.swift
//  projetoFinal
//
//  Created by Turma02-4 on 21/05/24.
//

import Foundation
import SwiftUI

struct SelectView: View {
    var corprincipal1: Color = Color("principal1")
    var corprincipal2: Color = Color("principal2")
    var corsecundaria1: Color = Color("secundaria1")
    @StateObject var model = ViewModel()
    var body: some View {
        
        ZStack {
            corprincipal2
                .ignoresSafeArea()
            
            VStack{
                Spacer().frame(height: 203)
                ScrollView{
                    
                        ForEach(model.chars, id: \.self) { planta in
                            NavigationLink(destination: nameView(recebe:planta)) {
                            HStack(){
                                AsyncImage(url: URL(string: planta.Imagem!)) { image in
                                    image
                                        .resizable()
                                        .frame(width: 100, height: 100)
                                        .cornerRadius(50)
                                        .shadow(radius:3)
                                        .padding(.leading, 30)
                                } placeholder: {
                                    ProgressView()
                                }
                                
                                Spacer()
                                
                                Text(planta.Nome!)
                                    .foregroundStyle(.white.gradient)
                                    .fontDesign(.rounded)
                                    .frame(width: 110, height: 70)
                                    .background(corprincipal2)
                                    .cornerRadius(2)
                                    .shadow(radius: 70)
                                Image(systemName: "plus.app.fill")
                                    .foregroundColor(.white)
                                Spacer()
                                
                            }.padding(.horizontal,10)
                        }
                    }
                }
            }
            VStack{
                Rectangle()
                    .frame(width:400, height: 220)
                    .foregroundStyle(corprincipal1)
                    .opacity(1)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                Spacer()
                    .frame( height: 600)
            }
            VStack{
                Text("Qual tipo de planta você quer  monitorar?")
                    .font(.system(size: 30))
                    .foregroundStyle(.white.gradient)
                    .fontDesign(.rounded)
                Spacer()
                    .frame(height: 500)
                
            }
            VStack{
                Spacer()
                    .frame(height: 650)
                Rectangle()
                    .frame(width:400, height: 100)
                    .foregroundStyle(corsecundaria1)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            }
            
        }.onAppear() {
            model.fetch()
        }
    }
    
}
#Preview {
    SelectView()
}
