//
//  ContentView.swift
//  Pokemon
//
//  Created by Developer on 11/12/2021.
//

import SwiftUI

struct ContentView: View {
    /*
    @State var Pokedex:[Pokemon] = [
    Pokemon(nome: "Ditto",
            nickName: "Joao",
            img: "ditto"),
    
    Pokemon(nome: "Mew",
            nickName: "Joao",
            img: "mew"),
    
    Pokemon(nome: "Porygon",
            nickName: "Joao",
            img: "porygon"),
    
    Pokemon(nome: "Pikachu",
            nickName: "Joao",
            img: "pikachu")
    ]*/
    @State var Pokedex:[tipoPokemon] = [
    
    tipoPokemon(tipo: "Eletrico", pokemons: [Pokemon(nome: "Pikachu",nickName: "", img: "pikachu")]),
    
    
    tipoPokemon(tipo: "Normal", pokemons: [Pokemon(nome: "Porygon",nickName: "", img: "porygon"),
Pokemon(nome: "Ditto",nickName: "", img: "ditto") ]),
    
    tipoPokemon(tipo: "Psiquico", pokemons: [Pokemon(nome: "Mew",nickName: "", img: "mew")]),

    ]
    
    var body: some View {
        NavigationView{
            List{
           
                ForEach(Pokedex){ tipo in

                    Section {
                        ForEach(tipo.pokemons){ pokemon in
                            NavigationLink {
                                pokeDetalhes(pokemon: pokemon)
                            } label: {
                                ListLine(pokemon: pokemon)
                            }
                        }
                        
                    } header: {
                        Text(tipo.tipo)
                        
                        
                    }
       
            }
            .navigationTitle("Pokedex")
        }
        
        
    }
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
