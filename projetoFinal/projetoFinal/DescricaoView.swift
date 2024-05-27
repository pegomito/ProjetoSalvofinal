//
//  DescricaoView.swift
//  projetoFinal
//
//  Created by Turma02-4 on 27/05/24.
//

import Foundation

import SwiftUI
struct DescricaoView: View {
    var corprincipal1: Color = Color("principal1")
    var corprincipal2: Color = Color("principal2")
    @State var recebe: Plantas
    var body: some View {
        
        
        ZStack{
            corprincipal2
                .ignoresSafeArea()
            VStack{
                Image("pol")
                    .resizable()
                    .frame(width: 250 ,height: 250 )
                
                Spacer().frame(height: 500)}
            VStack{
                AsyncImage(url: URL(string: recebe.Imagem!)) { image in
                    image
                        .resizable()
                        .frame(width: 100, height: 100)
                        .cornerRadius(50)
                        .shadow(radius:20)
                } placeholder: {
                    ProgressView()
                }
                Spacer().frame(height: 200)
                
            }
            
        }
        
        
        
        
        
    }
    }
#Preview {
    DescricaoView(recebe: Plantas(_id: "2a85e342f18f4a24b43a54ee7a059180",
                                  _rev: "1-df892b994d5a87a2c639968ad5622533",
                                   Nome: "Bromelia",
                                  Imagem:"https://stack.flowermarket.com.br/floresvip/images/produto/400_3568.jpg", Umidade: "10", Regar: "duas veiz"
                                  
                                   
                                  ))
}
