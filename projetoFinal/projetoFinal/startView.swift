//
//  startView.swift
//  projetoFinal
//
//  Created by Turma02-4 on 24/05/24.
//

import Foundation
import SwiftUI

struct startView: View {
    var corprincipal1: Color = Color("principal1")
    var corprincipal2: Color = Color("principal2")
    var body: some View {
        
        
        ZStack{
            corprincipal2
                .ignoresSafeArea()
            VStack{
                Image("logo")
                    .resizable()
                    .frame(width: 300 ,height: 150 )
                    .background()
                    .foregroundColor(.gray)
                    .cornerRadius(10)
                Spacer()
                
            }
        }
        
        
        
        
        
        
    }
    }
#Preview {
    startView()
}

