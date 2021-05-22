//
//  PersonLikeBar.swift
//  testeInicial
//
//  Created by WilliamG on 22/05/21.
//

import SwiftUI

struct PersonLikeBar: View {
    var colWidth: CGFloat
    var body: some View {
        LazyVGrid(columns: [
          GridItem(.fixed(colWidth)),
          GridItem(.fixed(colWidth)),
          GridItem(.fixed(colWidth)),
        ]){
          HStack{
              Image(systemName: "heart")
                  .resizable()
                  .aspectRatio(contentMode: .fit)
                  .frame(width:25)
                  .padding(.trailing,10)
                  .foregroundColor(.gray)
              
              Image(systemName: "magnifyingglass")
                  .resizable()
                  .aspectRatio(contentMode: .fit)
                  .frame(width:25)
                  .padding(.trailing,10)
                  .foregroundColor(.gray)
              
              Image(systemName: "location")
                  .resizable()
                  .aspectRatio(contentMode: .fit)
                  .frame(width:25)
                  .padding(.trailing,10)
                  .foregroundColor(.gray)
              
          }
          Spacer()
          
          Image(systemName: "bookmark")
              .resizable()
              .aspectRatio(contentMode: .fit)
              .frame(width:16)
              .padding(.trailing,10)
              .foregroundColor(.gray)
          
        }
    }
}

