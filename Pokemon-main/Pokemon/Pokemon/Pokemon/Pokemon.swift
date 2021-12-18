//
//  Pokemon.swift
//  Pokemon
//
//  Created by Developer on 18/12/2021.
//

import Foundation
import UIKit

class Pokemon: Identifiable{
    
    var id = UUID()
    
    var nome:String
    var nickName:String
    var img:UIImage
    var atk = 20
    var def = 20
    var xp = 57
    
    init(nome:String,nickName:String , img:String){
        self.nome = nome
        self.nickName = nickName
        self.img = UIImage(named: img) ?? UIImage.defImg
        
    }
    
}
