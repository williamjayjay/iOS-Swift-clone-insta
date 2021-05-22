//
//  NewsView.swift
//  testeInicial
//
//  Created by WilliamG on 21/05/21.
//

import SwiftUI

struct NewsView: View {
    var body: some View {
                     HStack{
            Image(systemName: "message")
                .imageScale(.large)
                .frame(width:20)
                .rotationEffect(.degrees(42))
                        
                        
                

            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.").font(.system(size: 12))
            
            Image("baseline_close_black_36pt").frame(width:20).foregroundColor(.gray)
        }    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView()
    }
}
