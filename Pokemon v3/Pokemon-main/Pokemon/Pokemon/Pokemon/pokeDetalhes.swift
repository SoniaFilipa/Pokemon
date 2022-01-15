//
//  pokeDetalhes.swift
//  Pokemon
//
//  Created by Developer on 18/12/2021.
//

import SwiftUI

struct pokeDetalhes: View {
    @State var pokemon:Pokemon
    @Binding var pokemonRandom:Pokemon?
    
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
                             //Text(pokemon.nome)
                                 /*Text("Ataque: \(pokemon.atk)")
                                 Text("Defesa: \(pokemon.def)")*/
                                 ProgressView(value: Float(pokemon.nivel), total: 100.0)
                                 {
                                    Text("Nivel")
                                         .font(.footnote)
                                }
                                 ProgressView(value: Float(pokemon.hp), total: 100.0)
                                 {
                                    Text("HP")
                                         .font(.footnote)
                                }
                                 ProgressView(value: Float(pokemon.power), total: 100.0)
                                 {
                                    Text("Power")
                                         .font(.footnote)
                                }
                                 ProgressView(value: Float(pokemon.atk), total: 100.0)
                                 {
                                    Text("Ataque")
                                         .font(.footnote)
                                }
                                 ProgressView(value: Float(pokemon.def), total: 100.0)
                                 {
                                    Text("Defesa")
                                         .font(.footnote)
                                }
                                 
                                 ProgressView(value: Float(pokemon.xp), total: 100.0)
                                 {
                                    Text("Evoluçäo")
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
                 
             ////comeco
          Spacer()
          NavigationLink {
                        //destino
              CampoBatalha(pokemon1: self.$pokemon, pokemonRandom: self.$pokemonRandom)
                    } label: {
                        //lbl
                        HStack{
                          
                            Text("Escolho-te a ti!")
                        }
                        .frame(width: 150, height: 50, alignment: .center)
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                        .clipShape(Capsule())
                        .font(.body.bold())
                    }.onAppear {
                        print(self.pokemonRandom!.nome)
                    }
          ///fim
                 
                 
                 Spacer()
             }
             .navigationTitle(self.pokemon.nome)
             
             
             
             
             
             
         }
     }

