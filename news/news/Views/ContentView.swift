//
//  ContentView.swift
//  news
//
//  Created by Vlad Zamaev on 22.12.2020.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager()
    var body: some View {
        NavigationView{
            List(networkManager.posts){
                post in
                NavigationLink(
                    destination: DetailView(url: post.url),
                    label: {
                        HStack {
                            Text(String(post.points))
                            Text(post.title)
                        }
                    })
            }
            .navigationBarTitle("NEWS")
        }
        .onAppear(perform: {
            networkManager.fetchData()
        })
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//let posts = [
//    Post(id: "1", title: "Hello 1"),
//    Post(id: "2", title: "Hello 2"),
//    Post(id: "3", title: "Hello 3")]
