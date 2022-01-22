//
//  Pokemon.swift
//  Pokemon
//
//  Created by Developer on 18/12/2021.
//

import Foundation
import UIKit

struct Pokemon: Identifiable{
    
    var id = UUID()
    var nome:String
    var img:UIImage
    var atk:Int
    var def:Int
    var xp:Int
    var nivel:Int
    var hp:Int
    var power:Int
    
    
    
    init(nome:String,img:String, atk:Int,def:Int,xp:Int,nivel:Int,hp:Int,power:Int){
        self.nome = nome
        self.img = UIImage(named: img) ?? UIImage.defImg
        self.atk = atk
        self.def = def
        self.xp = xp
        self.nivel = nivel
        self.hp = hp
        self.power = power
    }
    
}
