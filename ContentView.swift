//
//  ContentView.swift
//  testeInicial
//
//  Created by WilliamG on 21/05/21.
//

import SwiftUI

struct ContentView: View {
    let people: [Person] = [
        Person(name: "profile" , image: "tperson"),
        Person(name: "profile" , image: "tperson"),
        Person(name: "profile" , image: "tperson"),
    ]
    
    var body: some View {
        
        GeometryReader{
            geometry in
            let colWidth = geometry.size.width / 3
        
        
        TabView{
            NavigationView{
                VStack{
                    //nav
                    
                    NavView(colWidth: colWidth)
                    
                    
                    ScrollView{
                        VStack{
                        NewsView()
                            .padding(.leading, 10)
                            .padding(.trailing, 10)
                            .padding(.bottom, 15)
                            
                            
                        ThumbView(people: people)
                            .padding(.bottom, 15)
                            
                           
                        
                        LazyVStack(alignment: .leading){
                            ForEach(people, id: \.id) {
                                person in
                                
        PeopleContentView(person: person)
                                
                                Image(person.image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    
                     PersonLikeBar(colWidth: colWidth)
                                
                               
                            }
                        }
                        .padding(.leading, 10)
                        .padding(.trailing, 10)
                        .padding(.bottom, 15)
                        }
          
                        
                    }.navigationBarHidden(true)
                }
                
            }.tabItem { Image(systemName: "house.fill") }
            
            NavigationView{
                VStack{
                }
                
            }.tabItem { Image(systemName: "magnifyingglass") }
            
            NavigationView{
                VStack{
                }
                
            }.tabItem { Image(systemName: "camera") }
        
        
        NavigationView{
            VStack{
            }
            
        }.tabItem { Image(systemName: "heart") }
            
            
            NavigationView{
                VStack{
                }
                
            }.tabItem { Image(systemName: "person") }
            
            
        }    }}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
