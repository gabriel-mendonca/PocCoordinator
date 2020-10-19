//
//  AccountUserRequest.swift
//  PocCoordinator
//
//  Created by Gabriel Mendonça Sousa Gonçalves  on 14/10/20.
//

import Foundation


struct AccountUserRequest: Codable {
    let name: String
    let cpf: String
    let address: String
    let city: String
    let number: Int
    let password: String
    let confirmPassword: String
    
private enum Chave: String, CodingKey {
        case name, cpf, address, city, number, password, confirmPassword = "confirm_password"
    }

    
}



