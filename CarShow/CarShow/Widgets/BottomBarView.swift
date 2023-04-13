//
//  BottomBarView.swift
//  CarShow
//
//  Created by Ali Tamoor  on 29/12/2022.
//

import SwiftUI
struct BottomMenu<menuType: View> {
    
    var menuView: menuType
    var menuName = ""
    var menuImage = ""
    var order = 0
    
    init(@ViewBuilder menuView: () -> menuType, menuName: String = "", menuImage: String = "", order: Int = 0) {
        self.menuView = menuView()
        self.menuName = menuName
        self.menuImage = menuImage
        self.order = order
    }
}

struct BottomBarView: View {
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
    var siteVisit = BottomMenu(menuView: {
        SiteRequestView(mapsLocation: "", temp: .constant(""))
    }, menuName: "Request Visit",menuImage: "box.truck.badge.clock.fill",order: 4)
    
//    SiteRequestVIew
    var body: some View {
        VStack{
            TabView {
                homeMenu.menuView.tabItem {
                    VStack{
                        Image(systemName: homeMenu.menuImage)
                        Text(homeMenu.menuName)
                    }
                }
                searchMenu.menuView.tabItem {
                    VStack{
                        Image(systemName: searchMenu.menuImage)
                        Text(searchMenu.menuName)
                    }
                }
                cartMenu.menuView.tabItem {
                    VStack{
                        Image(systemName: cartMenu.menuImage)
                        Text(cartMenu.menuName)
                    }
                }
                profileMenu.menuView.tabItem {
                    VStack{
                        Image(systemName: profileMenu.menuImage)
                        Text(profileMenu.menuName)
                    }
                }
                siteVisit.menuView.tabItem {
                    VStack{
                        Image(systemName: siteVisit.menuImage)
                        Text(siteVisit.menuName)
                    }
                }
            }
        }
    }
}

struct BottomBarView_Previews: PreviewProvider {
    static var previews: some View {
        BottomBarView()
    }
}
