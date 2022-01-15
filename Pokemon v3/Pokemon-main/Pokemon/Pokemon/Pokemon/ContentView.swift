//
//  ContentView.swift
//  Pokemon
//
//  Created by Developer on 11/12/2021.
//

import SwiftUI

struct ContentView: View {

  @State var Pokedex:[tipoPokemon] = [
    
        tipoPokemon(tipo: "Eletrico", pokemons: [Pokemon(nome: "Pikachu", img: "pikachu", atk: 20, def:40,xp: 50,nivel:1,hp:50,power:10)]),
    
    
    tipoPokemon(tipo: "Normal", pokemons: [Pokemon(nome: "Porygon", img: "porygon",atk: 20, def:40,xp: 50,nivel:1,hp:50,power:10),
Pokemon(nome: "Ditto", img: "ditto",atk: 20, def:40,xp: 50,nivel:1,hp:50,power:10) ]),
    
    tipoPokemon(tipo: "Psiquico", pokemons: [Pokemon(nome: "Mew", img: "mew",atk: 20, def:40,xp: 50,nivel:1,hp:50,power:10)]),

    ]
    
    @State var PokemonRandom : Pokemon?
    
    var body: some View {
      
      
        NavigationView{
            List{
                      
                ForEach(Pokedex){ tipo in

                    Section {
                        ForEach(tipo.pokemons){ pokemon in
                            NavigationLink {
                                pokeDetalhes(pokemon: pokemon, pokemonRandom: self.$PokemonRandom)
                            } label: {
                                ListLine(pokemon: pokemon)
                            }
                        }
                        
                    } header: {
                        Text(tipo.tipo)
                        
                        
                    }
       
            }
                .onAppear(perform: {
                    self.PokemonRandom = self.Pokedex.randomElement()?.pokemons.randomElement()
                })
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
