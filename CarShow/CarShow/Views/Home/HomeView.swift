//
//  HomeView.swift
//  CarShow
//
//  Created by Ali Tamoor  on 29/12/2022.
//

import SwiftUI

struct HomeView: View {
    var order = 0
    var body: some View {
        VStack {
            TabBar()
            Spacer()
        }
//        .background(Rectangle().foregroundColor(.red))
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
