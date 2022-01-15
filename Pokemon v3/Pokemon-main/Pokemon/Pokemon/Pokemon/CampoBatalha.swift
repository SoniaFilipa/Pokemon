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
    var body: some View {
   
        
        
      VStack{
                   
                   HStack{
                       Group{
                           Image(uiImage: pokemonRandom!.img)
                               .resizable()
                               .scaledToFit()
                               .frame(width: 100, height: 100)
                               .padding(.trailing,200)
                               .offset(x:0,y:-100)
                       
                       ProgressView(value: Float(pokemonRandom!.hp), total: 100.0)
                      
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
                               .padding(.leading,200)
                       ProgressView(value: Float(pokemon1.hp), total: 100.0)
                              
                   }
    }
     }
        
        //Botoes Inicio
        
       /* VStack{
                      
            HStack{
              
                Text("Escolho-te a ti!")
            }
            .frame(width: 150, height: 50, alignment: .center)
            .background(Color.blue)
            .foregroundColor(Color.white)
            .clipShape(Capsule())
            .font(.body.bold())
                          
                          
                      }
       }*/
     //Botoes Fim
     
}
   
}
/*struct CampoBatalha_Previews: PreviewProvider {
    static var previews: some View {
        CampoBatalha()
    }
}*/

