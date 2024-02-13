//
//  SneakerScreen.swift
//  sneakersApp
//
//  Created by Thiago on 12/02/24.
//

import SwiftUI

struct SneakerView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var sneaker: Sneaker
    
    func onPurchase() -> Void {}
    
    var body: some View {
        NavigationView {
            ScrollView {
                MainView()
                VStack {
                    HStack(alignment: .bottom) {
                        VStack(alignment: .leading) {
                            TextComponentView(
                                text: "Exclusive collection",
                                size: 25,
                                color: Color("PrimaryWhite")
                            )
                            .kerning(-2)
                            .padding(.bottom, -25)
                            TextComponentView(
                                text: sneaker.name,
                                size: 41,
                                color: Color("PrimaryWhite")
                            ).kerning(-2)
                        }.frame(alignment: .leading)
                        Spacer()
                        TextComponentView(
                            text: "$\(sneaker.value) starting",
                            size: 25,
                            color: Color("PrimaryRed")
                        ).kerning(-2)
                    }.padding(.bottom, 25)
                    VStack(alignment: .leading) {
                        SizesView()
                        HStack {
                            Button(action: onPurchase) {
                                HStack {
                                    TextComponentView(
                                        text: "Purchase it now",
                                        size: 30,
                                        color: Color("PrimaryDark")
                                    )
                                }
                                .frame(width: 245, height: 60)
                                .background(Color("PrimaryRed"))
                                .cornerRadius(8)
                            }
                            Button(action: onPurchase) {
                                HStack {
                                    TextComponentView(
                                        text: "Add to wishlist",
                                        size: 20,
                                        color: Color("PrimaryDark")
                                    )
                                }
                                .frame(width: 99, height: 60)
                                .background(Color("PrimaryWhite"))
                                .cornerRadius(8)
                            }
                        }.padding(.top, 47)
                    }.frame(maxWidth: .infinity, alignment: .leading)
                }.padding([.leading, .top, .trailing], 28)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("PrimaryDark"))
            .scrollIndicators(.hidden)
        }
        .navigationBarBackButtonHidden(true)
        .toolbar(content: {
            ToolbarItem(placement: .navigationBarLeading) {
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }) {
                    Image(systemName: "arrow.left")
                        .font(.system(size: 20))
                        .foregroundColor(Color("PrimaryWhite"))
                }
            }
        })
        .environmentObject(SneakerViewModel(sneaker: sneaker))
    }
}

struct SneakerViewPreview: PreviewProvider {
    static var previews: some View {
        SneakerView(sneaker: Sneaker(
            name: "Nike swoosh",
            value: 250,
            image: "NikeSwoosh",
            colors: [
                ColorOption(name: "Red", hex: "#BC1C11"),
                ColorOption(name: "Black", hex: "#000000")
            ],
            sizes: [38, 39, 40, 41]
        )).environmentObject(SneakerViewModel(sneaker: Sneaker(
            name: "Michael Jordan",
            value: 250,
            image: "NikeSwoosh",
            colors: [
                ColorOption(name: "Red", hex: "#BC1C11"),
                ColorOption(name: "Black", hex: "#000000")
            ],
            sizes: [38, 39, 40, 41]
        )))
    }
}
