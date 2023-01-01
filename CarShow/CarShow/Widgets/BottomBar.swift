//
//  BottomBar.swift
//  CarShow
//
//  Created by Ali Tamoor  on 29/12/2022.
//

//import SwiftUI
//
//
//struct BottomBar: View {
//    @State var currentIndex = 0
//    var homeMenu = BottomMenu(menuName: "Home",menuImage: "house",order: 0)
//    var searchMenu = BottomMenu(menuName: "Search",menuImage: "magnifyingglass",order: 1)
//    var cartMenu = BottomMenu(menuName: "Cart",menuImage: "cart",order: 2)
//    var accountMenu = BottomMenu(menuName: "Account",menuImage: "person.crop.circle",order: 3)
//    var body: some View {
//        let bottomMenus = [homeMenu,searchMenu,cartMenu,accountMenu]
//        ZStack{
//            Spacer()
//            Rectangle().foregroundColor(Color(uiColor: .lightGray))
//            HStack {
//                ForEach(bottomMenus, id: \.order) { menu in
//                    Button {
//                        currentIndex = menu.order
//                    } label: {
//                        VStack {
//                            Spacer()
//                            Image(systemName: menu.menuImage)
//                                .fontWeight(.bold)
//                            Text(menu.menuName)
//                                .fontWeight(.semibold)
//                        }
//                        .padding()
//                        .foregroundColor(.black)
//                        .opacity(currentIndex == menu.order ? 1 : 0.5)
//                    }
//
//                }
//            }
//        }
//
//    }
//}
//
//struct BottomBar_Previews: PreviewProvider {
//    static var previews: some View {
//        BottomBar()
//    }
//}
