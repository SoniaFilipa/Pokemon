//
//  CampoBatalha.swift
//  Pokemon
//
//  Created by Developer on 20/12/2021.


import SwiftUI
import Foundation
import UIKit

struct CampoBatalha: View {
    @Binding var pokemon1:Pokemon
    @Binding var pokemonRandom:Pokemon?
    @State var navToResultadoBatalha = false
    @State var resultado: String
    var body: some View {
   
        
        
      VStack{
                   
                   HStack{
                       Group{
                           Image(uiImage: pokemonRandom!.img)
                               .resizable()
                               .scaledToFit()
                               .frame(width: 100, height: 100)
                               .padding(.trailing,200)
                               .offset(x:50,y:-100)
                       
                       ProgressView(value: Float(pokemonRandom!.hp), total: 100.0)
                               .offset(x: -135, y: -100)
                               .frame(width: 100)
                      
                   }
      }
      }
        
     VStack{
                   
                   HStack{
                       Group{
                           Image(uiImage: pokemon1.img)
                               .resizable()
                               .scaledToFit()
                               .frame(width: 100, height: 100)
                               .padding(.leading,300)
                       ProgressView(value: Float(pokemon1.hp), total: 100.0)
                               .offset(x: -250, y: 0)
                               .frame(width: 100)
                              
                   }
    }
     }
        
        //Botoes Inicio
        
        VStack{
            
            NavigationLink(isActive: self.$navToResultadoBatalha)
            {
                ResultadoBatalha(resultadoBatalha: self.$resultado)
            } label:{
                
                
            }.hidden()
            HStack{
              
                Text("Atacar")
            }
            .frame(width: 150, height: 50, alignment: .center)
            .background(Color.red)
            .foregroundColor(Color.white)
            .clipShape(Capsule())
            .font(.body.bold())
            .offset(x: 0, y: 50)
                          
        }.onTapGesture(perform: {
          //  let randomInt = pokemonRandom!.hp.random(in:1..<100)
           
            let randomAttack = Int.random(in: 1 ... 100)
            pokemonRandom!.hp = pokemonRandom!.hp - randomAttack
            let randomAtk = Int.random(in: 1 ... 100)
            pokemon1.hp = pokemon1.hp - randomAtk
            if pokemonRandom!.hp <= 1 {
                pokemonRandom!.hp = 1
                resultado = "O Pokemon \(pokemon1.nome) ganhou a batalha"
                self.navToResultadoBatalha.toggle()
            }
            if pokemon1.hp <= 1 {
                pokemon1.hp = 1
                resultado = "O Pokemon \(pokemonRandom!.nome) ganhou a batalha"
                self.navToResultadoBatalha.toggle()
            }
            if pokemonRandom!.hp == 1 &&  pokemon1.hp == 1 {
                resultado = "Empate"
                self.navToResultadoBatalha.toggle()
            }
        })
            
        
       }
     //Botoes Fim
     
}
   
//}
/*struct CampoBatalha_Previews: PreviewProvider {
    static var previews: some View {
        CampoBatalha()
    }
}*/

