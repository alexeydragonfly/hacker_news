//
//  ContentView.swift
//  hacker_news_swiftui
//
//  Created by Alexey on 2/26/22.
//

import SwiftUI


struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url )) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }
            //.listStyle(PlainListStyle())
            .navigationTitle("Hacker news")
        }
        
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



