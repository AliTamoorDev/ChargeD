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
                Image(systemName: "menu")
            }.frame(maxWidth: .infinity,alignment: .leading)
            Text("RMP Tesla")
        }
    }
}

struct HomeTopBar_Previews: PreviewProvider {
    static var previews: some View {
        HomeTopBar()
    }
}
