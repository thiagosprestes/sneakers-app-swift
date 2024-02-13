//
//  OptionsMenu.swift
//  sneakersApp
//
//  Created by Thiago on 12/02/24.
//

import SwiftUI

struct OptionsMenuView: View {
    @State var options = [
        "Sneakers",
        "Running",
        "Training",
        "Basketball"
    ]
    
    var selectedOption = "Sneakers"
    
    func renderText(item: String) -> Color {
        if(item == selectedOption) {
            return Color("PrimaryDark")
        }
        
        return Color("PrimaryWhite")
    }
    
    func renderBackground(item:String) -> Color {
        if(item == selectedOption) {
            return Color("PrimaryRed")
        }
        
        return Color("")
    }
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(options, id: \.self) { item in
                    HStack {
                        TextComponentView(text: item, size: 15, color: renderText(item: item))
                    }.frame(width: 89, height: 38).background(renderBackground(item: item)).cornerRadius(8).padding(.trailing, 8)
                }
            }.padding(.leading, 29)
        }.scrollIndicators(.hidden)
    }
}

struct OptionsMenuViewPreview: PreviewProvider {
    static var previews: some View {
        OptionsMenuView()
    }
}
