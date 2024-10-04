//
//  Util.swift
//  proyectoEP1
//
//  Created by alumno on 3/10/24.
//

import Foundation

class Util{
    static let shared = Util()
    func saveDataEnUserDefault(usuarios:[Usuario]){
        let userDefaults = UserDefaults.standard
       
        do{
            let dataSB = try JSONEncoder().encode(usuarios)
            userDefaults.set(dataSB, forKey:llaveUsuario)
            
        }catch{
            
        }
        
    }
    func recuperarUsuariosDeUserDefaults() -> [Usuario]? {
        let defaults = UserDefaults.standard
        
        if let dataSB = defaults.data(forKey: llaveUsuario) {
            do {
                let usuariosDC = try JSONDecoder().decode([Usuario].self, from: dataSB)
                print("Usuario recuperado satisfactoriamente.")
                return usuariosDC
            } catch {
                print("Error al decodificar los usuarios: \(error)")
                return nil
            }
        }
        
        return nil
    }
    func removerObjetoUserDefault(llave:String){
        let defaults = UserDefaults.standard
        defaults.removeObject(forKey: llave)
    }
}
