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
        ZStack {
            Color(#colorLiteral(red: 0.937254902, green: 0.937254902, blue: 0.937254902, alpha: 1))
                .ignoresSafeArea()
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading) {
                    HomeTopBar()
                    TabBar()
                    Spacer()
                    
                    Text("Wheel Accessories")
                        .fontWeight(.bold)
                        .font(.title2)
                        .padding()
                    
                    ScrollView(.horizontal,showsIndicators: false) {
                        HStack {
                            ForEach(0 ..< 5) { index in
                                ProductView(image: Image("car"+String(index+1)))
                            }.padding(.trailing,5)
                        }
                        .padding(.leading)
                    }
                    
                    
                    RecentlyViewed()
                    
                    Text("New Items")
                        .fontWeight(.bold)
                        .font(.title2)
                        .padding()
                    TabView {
                        ForEach(0..<5) { index in
                            VStack {
                                
                                Image("car"+String(index+1))
                                    .resizable()
                                    .cornerRadius(15)
                                Text("New Items "+String(index+1))
                                    .fontWeight(.bold)
                                    .frame(maxWidth: .infinity,alignment: .bottomLeading)
                            }
                        }
                    }
                    .frame(width: 350,height: 300)
                    .padding()
                    .tabViewStyle(.page)
                    .indexViewStyle(.page(backgroundDisplayMode: .always))
                    
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct ProductView: View {
    let image: Image
    var body: some View {
        VStack(alignment: .leading) {
            image
                .resizable()
                .frame(width: 200, height: 150)
                .cornerRadius(15)
            Text("Center USB Hub")
            HStack(spacing: 2) {
                ForEach(0..<5){ item in
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                }
                Spacer()
                Text("50$")
                    .fontWeight(.bold)
            }
        }
        .frame(width: 200)
        .padding()
        .background {
            Color(.white)
        }
        .cornerRadius(15)
        
    }
}

struct RecentlyViewed: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Recently Viewed")
                .fontWeight(.bold)
                .font(.title2)
                .padding()
            ScrollView(.horizontal,showsIndicators: false) {
                HStack {
                    ForEach(0 ..< 5) { index in
                        ProductView(image: Image("car"+String(index+1)))
                    }.padding(.trailing,5)
                }
                .padding(.leading)
                
            }
        }
    }
}
