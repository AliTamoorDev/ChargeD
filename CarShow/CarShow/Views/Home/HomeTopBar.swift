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
            Text("RMP Tesla")
                .fontWeight(.bold)
                .font(.title2)
        }
    }
}

struct HomeTopBar_Previews: PreviewProvider {
    static var previews: some View {
        HomeTopBar()
    }
}
