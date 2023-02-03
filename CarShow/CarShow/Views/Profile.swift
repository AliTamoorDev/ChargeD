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
                            .foregroundColor(ColorConstants.secondaryColorBlack)
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
                        .foregroundColor(ColorConstants.primaryColorGreen)
                    Text("Account Name")
                    .font(.title3)
//                    .fontWeight(.semibold)
                    .foregroundColor(ColorConstants.secondaryColorBlack)
                    Text("example@dummy.com")
                    ColorConstants.darkGray
                        .frame(maxWidth: .infinity,maxHeight: 0.3)
                        .clipShape(Capsule())
                        .padding(.horizontal)
                }

                AccountSubMenu(image: "list.bullet.rectangle", menuTitle: "Orders")
                AccountSubMenu(image: "heart", menuTitle: "Favourites")
                AccountSubMenu(image: "rectangle.and.pencil.and.ellipsis", menuTitle: "Reviews")
                AccountSubMenu(image: "truck", imageAsset: Image("truck"), menuTitle: "Shipping Address")
                AccountSubMenu(image: "dollarsign.circle", menuTitle: "Currency")
                ColorConstants.darkGray
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
    var imageAsset: Image?
    var menuTitle:String
    var menuSubTitle:String?
    var body: some View {
        HStack {
            if let img = imageAsset {
                img.resizable()
                    .frame(width: 26.5,height: 28)
                    .foregroundColor(ColorConstants.darkGray)
                    .padding()
            } else {
                Image(systemName: image).resizable()
                    .frame(width: 25,height: 23)
                    .foregroundColor(ColorConstants.darkGray)
                    .padding()
            }
            VStack(alignment: .leading) {
                Text("\(menuTitle)")
                    .font(.title3).fontWeight(.semibold)
                if let menuSubTitle = menuSubTitle{
                    Text("\(menuSubTitle)")
                        .foregroundColor(ColorConstants.darkGray)
                }
            }
//            .padding(.vertical)
            Spacer()
            Button {
                
            } label: {
                Image(systemName: "greaterthan")
                    .resizable()
                    .frame(width: 10,height: 13)
                    .foregroundColor(ColorConstants.secondaryColorBlack)
                    .padding(.trailing)
            }
        }
        .padding(.horizontal)
        .padding(.bottom)
    }
}
