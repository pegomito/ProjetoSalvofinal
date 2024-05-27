//
//  nameView.swift
//  projetoFinal
//
//  Created by Turma02-4 on 23/05/24.
//

import Foundation
import SwiftUI

struct nameView: View {
    var corprincipal1: Color = Color("principal1")
    var corprincipal2: Color = Color("principal2")
    var corsecundaria1: Color = Color("secundaria1")
    @State private var showingAlert = false
    @State private var name: String = ""
    @State var recebe: Results
    @StateObject var model2 = ViewModel()
    var body: some View {
        NavigationStack{
            ZStack{
                corprincipal2
                    .ignoresSafeArea()
                
                
                VStack{
                    Text("Dê um nome à(ao) sua(seu)  \(recebe.Nome!):")
                        .padding()
                        .font(.system(size: 30))
                        .foregroundStyle(.white.gradient)
                        .fontDesign(.rounded)
                    AsyncImage(url: URL(string: recebe.Imagem!)) { image in
                        image
                            .resizable()
                            .frame(width: 200, height: 200)
                            .cornerRadius(50)
                            .shadow(radius:20)
                    } placeholder: {
                        ProgressView()
                    }
                    Spacer().frame(height: 200)
                    
                    
                }
                VStack{
                    Spacer().frame(height: 200)
                    TextField("Ex: Bromélia da Neusa", text: $name)
                        .offset(x: 10)
                        .frame(width: 200, height:50)
                        .background()
                        .cornerRadius(10)
                        .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                }
                
                VStack{
                    Spacer().frame(height: 340)
                    
                    Button("Criar")
                    {  showingAlert = true
                            
                        model2.post(Plantas(_id: nil, _rev: nil, Nome: recebe.Nome, Imagem:recebe.Imagem, name: name, Umidade: recebe.Umidade, Regar: recebe.Regar, Descricao: recebe.Descricao))
                        
                        
                           
                    }
                    
                }
                VStack{
                    Spacer()
                        .frame(height: 594)
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
    nameView(recebe: Results(_id: "2a85e342f18f4a24b43a54ee7a059180",
                            _rev: "1-df892b994d5a87a2c639968ad5622533",
                             Nome: "Bromelia",
                             Umidade: "10",
                             Imagem:"https://stack.flowermarket.com.br/floresvip/images/produto/400_3568.jpg"
                             
                            ))
}
