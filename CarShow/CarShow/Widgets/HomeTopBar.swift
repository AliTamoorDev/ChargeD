//
//  HomeTopBar.swift
//  CarShow
//
//  Created by Ali Tamoor on 01/01/2023.
//

import SwiftUI

struct HomeTopBar: View {
    var body: some View {
        ZStack{
            Button {

            } label: {
                Image("menuBar")
            .resizable()
            .scaledToFit()
            .frame(width: 45,height: 35)
            }
            .frame(maxWidth: .infinity,alignment: .leading)

            
            Spacer()
            Image("logo")
                .resizable()
                .foregroundColor(ColorConstants.secondaryColorBlack)
                .frame(width: 150, height: 30)
        }.padding(.bottom,5)
    }
}

struct HomeTopBar_Previews: PreviewProvider {
    static var previews: some View {
        HomeTopBar()
    }
}
