//
//  Main.swift
//  sneakersApp
//
//  Created by Thiago on 12/02/24.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var viewModel: SneakerViewModel
    
    let deviceWidth = UIScreen.main.bounds.size.width
    
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(Color("PrimaryRed"))
                .frame(width: 594, height: 594)
                .position(x: deviceWidth/2)
            VStack(alignment: .leading) {
                TextComponentView(
                    text: viewModel.splitName().firstName,
                    size: 93,
                    color: Color("PrimaryDark")
                ).kerning(-7)
                TextComponentView(
                    text: viewModel.splitName().secondName,
                    size: 113,
                    color: Color("PrimaryWhite")
                ).kerning(-8).padding(.top, -100)
            }.position(x: 160, y: 130)
            Image(viewModel.sneaker.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 400, height: 266)
                .position(x: deviceWidth/2, y: 250)
            VStack(alignment: .leading) {
                TextComponentView(
                    text: "Choose colour",
                    size: 20,
                    color: Color("PrimaryWhite")
                )
                HStack(alignment: .top) {
                    ForEach(viewModel.sneaker.colors, id: \.name) { item in
                        Circle()
                            .stroke(Color( "PrimaryWhite"), lineWidth: 1)
                            .background(Circle().foregroundColor(Color(item.name)))
                            .frame(width: 11, height: 11)
                    }
                }.frame(alignment: .leading)
            }
            .frame(maxWidth: .infinity, alignment: .trailing)
            .padding(.trailing, 75)
            .padding(.top, 350)
        }.frame(height: 400)
    }
}

struct MainViewPreview: PreviewProvider {
    static var previews: some View {
        MainView().environmentObject(SneakerViewModel(
            sneaker: Sneaker(
                name: "Michael Jordan",
                value: 250,
                image: "MichaelJordan",
                colors: [
                    ColorOption(name: "Red", hex: "#BC1C11"),
                    ColorOption(name: "Black", hex: "#000000")
                ],
                sizes: [38, 39, 40, 41]
            )
        ))
    }
}
