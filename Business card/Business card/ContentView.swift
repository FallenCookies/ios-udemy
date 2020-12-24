//
//  ContentView.swift
//  Business card
//
//  Created by Vlad Zamaev on 22.12.2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(red: 0.09, green: 0.63, blue: 0.52)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Image("avatar")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                Text("Alice")
                    .font(.title)
                    .bold()
                    .foregroundColor(.white)
                    .padding()
                Text("Designer")
                    .foregroundColor(.white)
                    .font(.system(size: 23))
                Divider()
                InfoView(text: "+1234567890")
                InfoView(text: "somemail@mail.ru")
            }
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


