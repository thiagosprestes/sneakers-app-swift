//
//  Sizes.swift
//  sneakersApp
//
//  Created by Thiago on 12/02/24.
//

import SwiftUI

struct SizesView: View {
    @EnvironmentObject var viewModel: SneakerViewModel
    
    @State var selectedSize = 45
    
    func renderSelectedSize(size: Int) -> Bool {
        return selectedSize == size
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            TextComponentView(text: "Choose your size", size: 30, color: Color("PrimaryWhite"))
                .kerning(-2)
                .frame(alignment: .leading)
            LazyVGrid(columns: [
                GridItem(.adaptive(minimum: 57))
            ], spacing: 12) {
                ForEach(viewModel.sneaker.sizes, id: \.self) { item in
                    TextComponentView(text: String(item), size: 20, color: Color("PrimaryWhite"))
                        .frame(width: 57, height: 57)
                        .background(
                            renderSelectedSize(size: item) ? Color("PrimaryRed"): Color("PrimaryDark")
                        )
                        .cornerRadius(16)
                        .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color("PrimaryWhite"), lineWidth: renderSelectedSize(size: item) ? 3 : 1))
                }
            }
        }
    }
}

struct SizesViewPreview: PreviewProvider {
    static var previews: some View {
        SizesView().environmentObject(SneakerViewModel(sneaker: Sneaker(
            name: "Michael Jordan",
            value: 250,
            image: "MichaelJordan",
            colors: [
                ColorOption(name: "Red", hex: "#BC1C11"),
                ColorOption(name: "Black", hex: "#000000")
            ],
            sizes: [38, 39, 40, 41]
        )))
    }
}
