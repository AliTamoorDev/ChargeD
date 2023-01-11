//
//  Profile.swift
//  CarShow
//
//  Created by Ali Tamoor  on 29/12/2022.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        
        ScrollView(showsIndicators: false) {
            VStack(alignment: .center) {
                HStack {
                    Text("Account")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity,alignment: .leading)
                    Button {
                    } label: {
                        Image(systemName: "square.and.arrow.down")
                            .resizable()
                            .rotationEffect(.degrees(270))
                            .foregroundColor(.black)
                            .frame(width: 22,height: 25)
                            .padding(.trailing,2)
                    }
                    Text("Log Out")
                        .fontWeight(.semibold)

                }
                .padding()
                
                VStack(alignment: .center) {
                    Image(systemName: "person.crop.circle")
                        .resizable()
                        .frame(width: 40,height: 40)
                    Text("Account Name")
                    .font(.title3)
                    .fontWeight(.semibold)
                    Text("example@dummy.com")
                    Color(uiColor: .gray)
                        .frame(maxWidth: .infinity,maxHeight: 0.3)
                        .clipShape(Capsule())
                        .padding(.horizontal)
                }

                AccountSubMenu(image: "list.bullet.rectangle", menuTitle: "Orders")
                AccountSubMenu(image: "heart", menuTitle: "Favourites")
                AccountSubMenu(image: "rectangle.and.pencil.and.ellipsis", menuTitle: "Reviews")
                AccountSubMenu(image: "box.truck", menuTitle: "Shipping Address")
                AccountSubMenu(image: "dollarsign.circle", menuTitle: "Currency")
                Color(uiColor: .gray)
                    .frame(maxWidth: .infinity,maxHeight: 0.3)
                    .clipShape(Capsule())
                    .padding(.horizontal)
                RecentlyViewed()
            }
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}

struct AccountSubMenu: View {
    var image:String
    var menuTitle:String
    var menuSubTitle:String?
    var body: some View {
        HStack {
            Image(systemName: image)
                .resizable()
                .frame(width: 25,height: 23)
                .foregroundColor(.gray)
                .padding()
            VStack(alignment: .leading) {
                Text("\(menuTitle)")
                    .font(.title3).fontWeight(.semibold)
                if let menuSubTitle = menuSubTitle{
                    Text("\(menuSubTitle)")
                        .foregroundColor(.gray)
                }
            }
//            .padding(.vertical)
            Spacer()
            Button {
                
            } label: {
                Image(systemName: "greaterthan")
                    .resizable()
                    .frame(width: 10,height: 13)
                    .foregroundColor(.black)
                    .padding(.trailing)
            }
        }
        .padding(.horizontal)
        .padding(.bottom)
    }
}
