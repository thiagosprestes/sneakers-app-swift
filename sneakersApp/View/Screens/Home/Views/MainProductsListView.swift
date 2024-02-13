//
//  MainProductsList.swift
//  sneakersApp
//
//  Created by Thiago on 12/02/24.
//

import SwiftUI

struct MainProductsListView: View {
    @EnvironmentObject var viewModel: HomeViewModel
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(viewModel.sneakers, id: \.name) { item in
                    NavigationLink(
                        destination: SneakerView(sneaker: item),
                        label: {
                            VStack(alignment: .leading) {
                                VStack(alignment: .leading) {
                                    TextComponentView(
                                        text: splitName(name: item.name).firstName,
                                        size: 30,
                                        color: Color("PrimaryDark")
                                    )
                                    TextComponentView(
                                        text: splitName(name: item.name).secondName,
                                        size: 43,
                                        color: Color("PrimaryDark")
                                    ).padding(.top, -30)
                                    TextComponentView(
                                        text: viewModel.renderValue(value: item.value),
                                        size: 30,
                                        color: Color("PrimaryRed")
                                    )
                                }
                                Image(systemName: "cart")
                                    .font(.system(size: 30))
                                    .foregroundColor(Color("PrimaryWhite"))
                                    .padding(15)
                                    .background(
                                        RoundedRectangle(cornerRadius: 10).fill(Color("PrimaryRed"))
                                    )
                                    .position(x: 165, y: 130)
                            }
                            .padding([.leading, .top], 24)
                            .frame(width: 237, height: 333, alignment: .topLeading)
                            .background(Color("PrimaryWhite"))
                            .cornerRadius(35)
                            .padding(.trailing, 20)
                            .padding(.top, 34)
                            .overlay(Image(item.image).padding(.leading, 6).padding(.top, 50))
                        })
                }
            }.padding(.leading, 29)
        }.scrollIndicators(.hidden)
    }
}

struct MainProductsListViewPreview: PreviewProvider {
    static var previews: some View {
        MainProductsListView().environmentObject(HomeViewModel())
    }
}
