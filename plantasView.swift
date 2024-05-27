//
//  plantasView.swift
//  projetoFinal
//
//  Created by Turma02-4 on 21/05/24.
//

import Foundation
import SwiftUI

struct plantasView: View {
    var corprincipal1: Color = Color("principal1")
    var corprincipal2: Color = Color("principal2")
    var corsecundaria1: Color = Color("secundaria1")
    var body: some View {
        NavigationStack{
            ZStack {
                corprincipal2
                VStack{
                    
                    Spacer()
                        .frame(height: 650)
                    Rectangle()
                        .frame(width:400, height: 60)
                        .foregroundStyle(corsecundaria1)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                }
                NavigationLink(destination:
                SelectView()){
                    HStack{
                        Text("Adicionar plantas")
                            .font(.system(size: 30))
                            .foregroundStyle(.white.gradient)
                            .fontDesign(.rounded)
                
                        Image(systemName: "plus.app.fill")
                            .foregroundColor(.white)
                    }
                }
                VStack{
                    
                    Rectangle()
                        .frame(width:400, height: 200)
                        .foregroundStyle(corprincipal1)
                        .opacity(1)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    Spacer()
                        .frame( height: 700)
                }
                
            }.edgesIgnoringSafeArea(.top)
        }
    }
}
#Preview {
    plantasView()
}
