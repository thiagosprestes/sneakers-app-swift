//
//  Header.swift
//  sneakersApp
//
//  Created by Thiago on 12/02/24.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            Image(systemName: "line.horizontal.3")
                .frame(alignment: .leading)
                .font(.system(size: 30))
                .foregroundColor(Color("PrimaryRed"))
            Spacer()
            HStack {
                Image(systemName: "bag")
                    .font(.system(size: 24))
                    .foregroundColor(Color("PrimaryRed"))
                Image(systemName: "person.crop.circle")
                    .font(.system(size: 32))
                    .foregroundColor(Color("PrimaryRed"))
            }
        }.frame(maxWidth: .infinity).padding([.leading, .trailing], 29).padding(.bottom, 46)
    }
}


struct HeaderViewPreview: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
