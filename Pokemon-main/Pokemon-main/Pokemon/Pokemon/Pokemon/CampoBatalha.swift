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
  
    var body: some View {
   
        
        
     /*   VStack{
                   
                   HStack{
                       Group{
                           Image(uiImage: pokemon2.img)
                               .resizable()
                               .scaledToFit()
                               .frame(width: 100, height: 100)
                               .padding(.trailing,200)
                       }
                   }
    }*/
        
        
      VStack{
                   
                   HStack{
                       Group{
                           Image(uiImage: pokemon1.img)
                               .resizable()
                               .scaledToFit()
                               .frame(width: 100, height: 100)
                               .padding(.leading,200)
                       }
                   }
    }
        
      
        //imageArr = ["1.jpeg","2.jpeg","3.jpeg","4.jpeg"]
        //let RandomNumber = Int(arc4random_uniform(UInt32(ContentView.self.accessibilityIdentifier("ListaPokemon")))
           //imageArr is array of images
          //  let image = UIImage.init(named: "\(imageArr[RandomNumber])")

      //     let imageView = UIImageView.init(image: image)
        
     
}
   
}
/*struct CampoBatalha_Previews: PreviewProvider {
    static var previews: some View {
        CampoBatalha()
    }
}*/

