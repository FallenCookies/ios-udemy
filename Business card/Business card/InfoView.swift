//
//  InfoView.swift
//  Business card
//
//  Created by Vlad Zamaev on 22.12.2020.
//

import SwiftUI

struct InfoView: View {
    let text: String
    var body: some View {
        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
            .fill(Color.white)
            .frame(height: 50, alignment: .center)
            .overlay(Text(text).bold().font(.system(size: 30)))
            .padding()
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello")
            .previewLayout(.sizeThatFits)
    }
}
