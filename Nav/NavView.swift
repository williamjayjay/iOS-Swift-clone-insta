//
//  NavView.swift
//  testeInicial
//
//  Created by WilliamG on 21/05/21.
//

import SwiftUI

struct NavView: View {
    var colWidth : CGFloat
    
    var body: some View {
        LazyVGrid(
            columns: [
                GridItem(.fixed(colWidth)),
                GridItem(.fixed(colWidth)),
                GridItem(.fixed(colWidth)),
            ]
         
               
            )
        {
            Spacer()
            Text("InstaClone").font(.custom("OleoScript-Regular", size:26))
            
            Image(systemName: "location")
//                                    Image("plane-arrow")
//                                        .resizable()
//                                        .aspectRatio(contentMode: .fit)
//                                        .frame(width:12)
//                                        .rotationEffect(.degrees(-28))
        }
    }
}

