//
//  ThumbView.swift
//  testeInicial
//
//  Created by WilliamG on 21/05/21.
//

import SwiftUI

struct ThumbView: View {
    var people : [Person]
    
    var body: some View {
        
            
            
        ScrollView(.horizontal){
            HStack{
                VStack{
                    Image(systemName: "person.crop.circle.badge.checkmark")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 70)
                        .rotation3DEffect(.degrees(180), axis: (x: 0, y: 1, z: 0))
                        .foregroundColor(.gray)
                        .opacity(0.5)
                        .colorInvert()
                        .padding(.bottom,10)
                        
                        
                    Text("Your Story")
                        .font(.system(size: 12))
                }.padding(.trailing,20)
                .padding(.leading,10)
                .padding(.top,10)
                
                
                
                ForEach(
                    people, id: \.id) {
                    person in
                    
                    VStack{
                        Image(person.name)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 55)
                            .padding(2)
                            .clipShape(Circle())
                            .overlay(Circle()
                                                        .stroke(Color.black, lineWidth: 2)
                                            )
                       
                        
                        
                        Text(person.name)
                            .font(.system(size: 12))
                        
                    }.padding(.trailing,20)    }}
               
                
            }
            
        
    }
}


