//
//  ContentView.swift
//  projetoFinal
//
//  Created by Turma02-4 on 21/05/24.
//

import SwiftUI

struct ContentView: View {
    var corprincipal1: Color = Color("principal1")
    var corprincipal2: Color = Color("principal2")
    var body: some View {
        ZStack {
            
        }
        VStack{
            TabView{
                
                
                perfilView()
                    .tabItem {
                        Label("Perfil", systemImage: "person.crop.circle")
                        
                    }
                
                addView()
                .tabItem {
                    Label("Minhas plantas", systemImage: "leaf")
                    
                    Label("Adicionar plantas", systemImage: "leaf.arrow.triangle.circlepath")
                }
                plantasView()
                    .tabItem {
                        Label("Adicionar plantas", systemImage: "leaf.arrow.triangle.circlepath")
                        
                    }
                
                
                
            }
            
        }
    }
}


#Preview {
    ContentView()
}
