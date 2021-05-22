//
//  PeopleContentView.swift
//  testeInicial
//
//  Created by WilliamG on 21/05/21.
//

import SwiftUI

struct PeopleContentView: View {
    var person: Person
    
    var body: some View {
        HStack{
            Image(person.name)
                .resizable()
                .padding(2)
                .aspectRatio(contentMode: .fit)
                .frame(width: 35)
                .clipShape(Circle())
                .overlay(Circle()
                                            .stroke(Color.black, lineWidth: 2)
                                )
            VStack(alignment: .leading){
                Text("William")
                    .font(.system(size: 12))
                
                
                Text("producejams - Original Audio")
                    .font(.system(size: 12))
                
            }
            
            Spacer()
            
//                                    Image(systemName: "magnifyingglass")
            
            Image("outline_more_horiz_black_20pt").frame(width:20)
                .padding(.trailing, 10)
            
        }
    }
}


