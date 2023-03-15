//
//  KeyChain.swift
//  HeroMultiPlatform
//
//  Created by IsaDevs on 15/3/23.
//

import Foundation
import KeychainSwift

func saveMyChain(key : String, value : String) -> Bool {
    if let data = value.data(using: .utf8){
        let keychain = KeychainSwift()
        keychain.set(data, forKey: key)
        return true
    }
    else {
        return false
    }
}

func loadKC(key : String) -> String?{
    let keychain = KeychainSwift()
    
    // keychain.accessGroup = "<CODIOF>"
    
    if let data = keychain.get(key) {
        return data
    }
    else {
        return ""
    }
}


func deleteKC(key : String){
    let keychain = KeychainSwift()
    keychain.delete(key)
}
