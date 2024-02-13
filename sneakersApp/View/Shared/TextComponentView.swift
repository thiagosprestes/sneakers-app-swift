//
//  TextComponent.swift
//  sneakersApp
//
//  Created by Thiago on 10/02/24.
//


import SwiftUI

struct TextComponentView: View {
    var text: String
    var size: CGFloat
    var color: Color
    
    var body: some View {
        VStack {
            Text(text).font(Font.custom("Bebas-Regular", size: size)).foregroundColor(color)
        }
    }
}

struct TextComponentViewPreview: PreviewProvider {
    static var previews: some View {
        TextComponentView(text: "Ola, mundo!", size: 40, color: Color("PrimaryRed"))
    }
}

