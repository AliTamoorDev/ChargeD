//
//  DrawerView.swift
//  CarShow
//
//  Created by Ali Tamoor  on 03/02/2023.
//

import SwiftUI
import VTabView

struct DrawerView: View {
    init(){
        UITabBar.appearance().isHidden = true
    }
    var body: some View {
       
        HStack {
            DrawerMenus()
            TabView {
                Text("asd")
//                HomeView().tag(")
            }
//            .frame(maxWidth: .infinity)
            .frame(width: UIScreen.main.bounds.width)
        }
//        .frame(maxWidth: .infinity)
//        .frame(width: UIScreen.main.bounds.width)
//        .offset(x: 100)
        
    }
}

struct DrawerMenus: View {
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
    var body: some View{
        //        NavigationView {
        ZStack {
            ColorConstants.tertiaryColor
                .ignoresSafeArea()
            VStack{
                
                //HomeMenu
                NavigationLink(destination: homeMenu.menuView) {
                    VStack{
                        ColorConstants.primaryColorGreen
                            .frame(maxWidth: .infinity,maxHeight: 2)
                            .clipShape(Capsule())
                        HStack{
                            Image(systemName: homeMenu.menuImage)
                                .padding(.trailing,10)
                            Text(homeMenu.menuName)
                        }
                        .padding(.horizontal)
                        .frame(maxWidth: .infinity,maxHeight: 50,alignment: .leading)
                    }
                    .foregroundColor(ColorConstants.bgColorWhite)
                }.padding(.top,1)
                
                //Search menu
                NavigationLink(destination: searchMenu.menuView) {
                    VStack{
                        ColorConstants.primaryColorGreen
                            .frame(maxWidth: .infinity,maxHeight: 2)
                            .clipShape(Capsule())
                        HStack{
                            Image(systemName: searchMenu.menuImage)
                                .padding(.trailing,10)
                            Text(searchMenu.menuName)
                        }
                        .padding(.horizontal)
                        .frame(maxWidth: .infinity,maxHeight: 50,alignment: .leading)
                    }
                    .foregroundColor(ColorConstants.bgColorWhite)
                }
                
                Spacer()
                HStack{
                    Button {
                    } label: {
                        Image(systemName: "square.and.arrow.down")
                            .resizable()
                            .rotationEffect(.degrees(270))
                            .foregroundColor(ColorConstants.bgColorWhite)
                            .frame(width: 22,height: 25)
                            .padding(.trailing,2)
                    }
                    Text("Log Out")
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                }
                .padding([.leading,.bottom])
                .frame(maxWidth: .infinity,alignment: .leading)
            }
        }
        .frame(width: 200)
        //        }
    }
}
struct DrawerView_Previews: PreviewProvider {
    static var previews: some View {
        DrawerView()
    }
}


