//
//  File.swift
//  projetoFinal
//
//  Created by Turma02-4 on 22/05/24.
//

import Foundation

class ViewModel : ObservableObject {
    @Published var chars : [ Results ] = []
    @Published var MinhasPlantas : [ Plantas ] = []
    
    func fetch(){
        guard let url = URL(string: "http://127.0.0.1:1880/got" ) else{
            return
        }
        
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
                guard let data = data, error == nil else{
                return
            }
            
            do {
                let parsed = try JSONDecoder().decode([Results].self, from: data)
                
                DispatchQueue.main.async {
                    self?.chars = parsed
                }
            }catch{
                print(error)
            }
        }
        
        task.resume()
    }
    
    func fetchMinhasPlantas(){
        guard let url = URL(string: "http://127.0.0.1:1880/gotPlanta" ) else{
            return
        }
        
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
            guard let data = data, error == nil else{
                return
            }
            
            do {
                let parsed = try JSONDecoder().decode([Plantas].self, from: data)
                
                DispatchQueue.main.async {
                    self?.MinhasPlantas = parsed
                }
            }catch{
                print(error)
            }
        }
        
        task.resume()
    }
    
    func post(_ p: Plantas){
        guard let url = URL(string: "http://127.0.0.1:1880/pongPlanta" ) else{
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        
        
        // Headers must specify that the HTTP request body is JSON-encoded
        var headers = request.allHTTPHeaderFields ?? [:]
        headers["Content-Type"] = "application/json"
        request.allHTTPHeaderFields = headers
        
        let encoder = JSONEncoder()
        
        do {
            let jsonData = try encoder.encode(p)
            request.httpBody = jsonData
            print("jsonData: ", String(data: request.httpBody!, encoding: .utf8) ?? "no body data")
        } catch {
            print("Error encoding to JSON: \(error.localizedDescription)")
        }
        
        
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                print("Error to send resource: \(error.localizedDescription)")
                return
            }
            
            guard let httpResponse = response as? HTTPURLResponse else {
                print("Error to send resource: invalid response")
                return
            }
            
            if httpResponse.statusCode == 200 {
                print("Resource POST successfully")
            } else {
                print("Error POST resource: status code \(httpResponse.statusCode)")
            }
        }
        
        task.resume()
    }
}
