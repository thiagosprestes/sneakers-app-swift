//
//  HomeScreen.swift
//  sneakersApp
//
//  Created by Thiago on 12/02/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                HeaderView()
                OptionsMenuView()
                MainProductsListView()
                OtherProductsListView()
            }
            .scrollIndicators(.hidden)
            .frame(
                maxWidth: .infinity,
                maxHeight: .infinity
            ).background(Color("PrimaryDark"))
        }.preferredColorScheme(.dark)
    }
}

struct HomeViewPreview: PreviewProvider {
    static var previews: some View {
        HomeView().environmentObject(HomeViewModel())
    }
}
