//
//  DrawerView.swift
//  CarShow
//
//  Created by Ali Tamoor  on 03/02/2023.
//

import SwiftUI
import VTabView

struct DrawerView: View {
    var homeMenu = BottomMenu(menuView: {
        HomeView()
    }, menuName: "Home",menuImage: "house",order: 0)
    var searchMenu = BottomMenu(menuView: {
        SearchView()
    },menuName: "Search",menuImage: "magnifyingglass",order: 1)
    var cartMenu = BottomMenu(menuView: {
        CategoryView()
    },menuName: "Cart",menuImage: "cart",order: 2)
    var profileMenu = BottomMenu(menuView: {
        Profile()
    },menuName: "Account",menuImage: "person.crop.circle",order: 3)
    
    var body: some View {
        NavigationView {
            ZStack{
            ColorConstants.tertiaryColor
            
                NavigationLink(destination: HomeView()) {
                    HStack{
                        Image(systemName: cartMenu.menuImage)
                            .padding(.trailing,15)
                        Text(cartMenu.menuName)
                    }
                    .padding()
                    .foregroundColor(ColorConstants.secondaryColorBlack)
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(ColorConstants.secondaryColorBlack, lineWidth: 1)
                    )

                }
                .frame(width: 120,height: 100)
            }
        }
    }
}
struct DrawerView_Previews: PreviewProvider {
    static var previews: some View {
        DrawerView()
    }
}


