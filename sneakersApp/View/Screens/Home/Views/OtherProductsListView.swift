//
//  OtherProductsList.swift
//  sneakersApp
//
//  Created by Thiago on 12/02/24.
//

import SwiftUI

struct OtherProductsListView: View {
    @State var sneakers = [
        Sneaker(
            name: "Sneaker Viper",
            value: 150,
            image: "AllStar",
            colors: [ColorOption(name: "Green", hex: "#007A28")],
            sizes: [36, 37, 38]
        ),
        Sneaker(
            name: "Nike Jogger",
            value: 180,
            image: "NikeJogger",
            colors: [ColorOption(name: "Black", hex: "#000000")],
            sizes: [36, 37, 38]
        )
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            TextComponentView(
                text:"Best for you",
                size: 35,
                color: Color("PrimaryWhite")
            ).padding(.leading, 29)
            ScrollView(.horizontal) {
                HStack {
                    ForEach(sneakers, id: \.name) { item in
                        ZStack(alignment: .topLeading) {
                            VStack(alignment: .leading) {
                                TextComponentView(
                                    text: splitName(name: item.name).firstName,
                                    size: 23,
                                    color: Color("PrimaryDark")
                                )
                                TextComponentView(
                                    text: splitName(name: item.name).secondName,
                                    size: 36,
                                    color: Color("PrimaryDark")
                                )
                                .padding(.top, -25)
                                TextComponentView(
                                    text: "$ \(item.value) USD",
                                    size: 23,
                                    color: Color("PrimaryRed")
                                )
                            }
                            Image(systemName: "cart")
                                .font(.system(size: 22))
                                .foregroundColor(Color("PrimaryWhite"))
                                .padding(13)
                                .background(
                                    RoundedRectangle(cornerRadius: 10).fill(Color("PrimaryRed"))
                                )
                                .position(x: 130, y: 210)
                        }
                        .padding([.leading, .top], 24)
                        .frame(width: 195, height: 274, alignment: .topLeading)
                        .background(Color("PrimaryWhite"))
                        .cornerRadius(35)
                        .padding(.trailing, 30)
                        .overlay(
                            Image(item.image)
                            .padding(.leading, 6)
                            .padding(.top, 30)
                        )
                    }
                }.padding(.leading, 29)
            }.scrollIndicators(.hidden)
        }.frame(maxWidth: .infinity, alignment: .leading).padding(.top, 25)
    }
}

struct OtherProductsListViewPreview: PreviewProvider {
    static var previews: some View {
        OtherProductsListView()
    }
}
