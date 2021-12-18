//
//  pokeDetalhes.swift
//  Pokemon
//
//  Created by Developer on 18/12/2021.
//

import SwiftUI

struct pokeDetalhes: View {
    @State var pokemon:Pokemon
    var body: some View {
       
        VStack{
            
            HStack{
                Group{
                    Image(uiImage: pokemon.img)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                        .padding(.leading, 30)
                    VStack(alignment: .leading){
                        Group{
                        Text(pokemon.nome)
                        Text("Ataque: \(pokemon.atk)")
                        Text("Defesa: \(pokemon.def)")
                            ProgressView(value: Float(pokemon.xp), total: 100.0)
                            {
                               Text("To Evolve:")
                                    .font(.footnote)
                           }
                                .progressViewStyle(.linear)
                                .frame(width: 100)
                            
                          
                        }
                        .padding(.bottom, 1)
                        
                    }
                }
                Spacer()
            }//HStack
            .frame(height: 200)
            
           
            
            
            Spacer()
        }
        .navigationTitle(self.pokemon.nome)
        
        
        
        
        
        
    }
}

struct pokeDetalhes_Previews: PreviewProvider {
    static var previews: some View {
        pokeDetalhes(pokemon: Pokemon(nome: "Porygon",
                                      nickName: "Joao",
                                      img: "porygon"))
    }
}


