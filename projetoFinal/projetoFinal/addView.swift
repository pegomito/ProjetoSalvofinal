//
//  addView.swift
//  projetoFinal
//
//  Created by Turma02-4 on 21/05/24.
//

import Foundation
import SwiftUI

struct addView: View {
    var corprincipal1: Color = Color("principal1")
    var corprincipal2: Color = Color("principal2")
    var corsecundaria1: Color = Color("secundaria1")
    @State var name2: String = ""
    @StateObject var model3 = ViewModel()
    var body: some View {
        NavigationStack{
            ZStack {
                corprincipal2
                    .ignoresSafeArea()
                VStack{
                    Rectangle()
                        .frame(width:400, height: 220)
                        .foregroundStyle(corprincipal1)
                        .opacity(1)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    Spacer()
                        .frame( height: 722)
                }
                VStack{
                    
                    Spacer().frame(height: 250)
                    VStack{
                        
                        ScrollView{
                            
                            ForEach(model3.MinhasPlantas, id: \.self) { plant in
                                NavigationLink(destination: DescricaoView(recebe:plant)) {
                                    HStack(){
                                        VStack{
                                            Spacer()
                                            AsyncImage(url: URL(string: plant.Imagem!)) { image in
                                                image
                                                    .resizable()
                                                    .frame(width: 100, height: 100)
                                                    .cornerRadius(50)
                                                    .shadow(radius:3)
                                                    .padding(.leading, 30)
                                            } placeholder: {
                                                ProgressView()
                                            }
                                        }
                                        Spacer()
                                        VStack{
                                            VStack{
                                                Spacer()
                                                Text(plant.name!)
                                                    .foregroundStyle(.white.gradient)
                                                    .font(.system(size: 30))
                                                    .fontDesign(.rounded)
                                                    .cornerRadius(2)
                                                .shadow(radius: 70)}
                                            
                                            Text(plant.Nome!)
                                                .foregroundStyle(.white.gradient)
                                                .frame(width: 100, height: 40)
                                                .background(corprincipal2)
                                                .cornerRadius(2)
                                                .shadow(radius: 70)
                                        }
                                        Spacer()
                                        
                                    }
                                }.padding(.horizontal,10)
                                
                            }
                            
                        }
                        
                    }
                    
                    Spacer()
                    
                    
                }.onAppear() {
                    model3.fetchMinhasPlantas()
                    
                }
                
                VStack{
                    Spacer()
                        .frame(height: 651)
                    Rectangle()
                        .frame(width:400, height: 60)
                        .foregroundStyle(corsecundaria1)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                }
            }
            
        }
        
    }
    
}
#Preview {
    addView()
}
