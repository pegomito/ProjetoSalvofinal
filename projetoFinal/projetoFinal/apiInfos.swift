//
//  apiInfos.swift
//  projetoFinal
//
//  Created by Turma02-4 on 22/05/24.
//

import Foundation
import SwiftUI

struct Results: Codable, Hashable {
    var _id: String?
    var _rev: String?
    var Nome: String?
    var Umidade: String?
    var Regar: String?
    var Imagem: String?
    var Descricao: String?
}
struct Plantas: Codable, Hashable {
    var _id : String?
    var _rev: String?
    var Nome: String?
    var Imagem: String?
    var name: String?
    var Umidade: String?
    var Regar: String?
    var Descricao: String?
}
struct PlantaUsuario : Codable {
    var _id : String?
    var _rev: String?
    var list: [Plantas]
}
