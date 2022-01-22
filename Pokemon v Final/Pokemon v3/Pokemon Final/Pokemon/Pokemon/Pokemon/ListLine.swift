//
//  ListLine.swift
//  Pokemon
//
//  Created by Developer on 18/12/2021.
//

import SwiftUI

struct ListLine: View {
    @State var pokemon:Pokemon
    var body: some View {
      
        HStack{
            Image(uiImage: self.pokemon.img)
                .resizable()
                .scaledToFill()
                .frame(width: 60, height: 60)
            
            VStack{
                Text(self.pokemon.nome)
        
               
                
                
            }
            
        }
    }
}

struct ListLine_Previews: PreviewProvider {
    static var previews: some View {
        ListLine(pokemon:  Pokemon(nome: "Ditto", img: "ditto", atk: 20, def:40,xp: 50,nivel:1,hp:70,power:10))
    }
}
