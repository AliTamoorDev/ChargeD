//
//  TabBar.swift
//  CarShow
//
//  Created by Ali Tamoor  on 29/12/2022.
//

import SwiftUI

struct TabBar: View {
    var titles:[String]
    @State var selectedIndex = 0
    var body: some View {
        HStack() {
            ForEach(Array(titles.enumerated()), id: \.offset) { (index, title) in
                Spacer()
                VStack(spacing: 2) {
                    Button {
                        selectedIndex = index
                    } label: {
                        Text(title)
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.secondaryColorBlack).opacity(selectedIndex == index ? 1 : 0.6)
//                            .padding(.horizontal,10)
                    }
                    if index == selectedIndex {
                        ColorConstants.primaryColorGreen
                            .frame(width: 26,height: 3.5)
                            .clipShape(Capsule())
                    }
                }
                Spacer()
            }
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar(titles:  ["Model3","Model X","Model Y","Model Z"])
    }
}
