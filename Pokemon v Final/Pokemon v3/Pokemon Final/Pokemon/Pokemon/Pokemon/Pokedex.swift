//
//  Pokedex.swift
//  Pokemon
//
//  Created by Developer on 20/12/2021.
//

import SwiftUI

struct Pokedex: View {
    @State var Pokedex:[tipoPokemon] = [
        
        tipoPokemon(tipo: "Eletrico", pokemons: [Pokemon(nome: "Pikachu", img: "pikachu", atk: 20, def:40,xp: 50,nivel:1,hp:50,power:10)]),
    
    
    tipoPokemon(tipo: "Normal", pokemons: [Pokemon(nome: "Porygon", img: "porygon",atk: 20, def:40,xp: 50,nivel:1,hp:50,power:10),
Pokemon(nome: "Ditto", img: "ditto",atk: 20, def:40,xp: 50,nivel:1,hp:50,power:10) ]),
    
    tipoPokemon(tipo: "Psiquico", pokemons: [Pokemon(nome: "Mew", img: "mew",atk: 20, def:40,xp: 50,nivel:1,hp:50,power:10)]),

    ]
    var body: some View {
        
      
}
    
}
}
