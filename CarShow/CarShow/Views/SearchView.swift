//
//  SearchView.swift
//  CarShow
//
//  Created by Ali Tamoor  on 29/12/2022.
//

import SwiftUI

struct SearchView: View {
    @State var search:String = ""
    var titles =  ["Results","Categories"]
    var body: some View {
        VStack(alignment: .leading) {
            Text("Search Products")
                .font(.title2)
                .fontWeight(.bold)
                .padding()
            
            HStack {
                
                Image(systemName: "magnifyingglass")
                    .padding(.leading)
                TextField("Search Items", text: $search)
                
            }
            .padding(.vertical)
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(.black, lineWidth: 2)
            )
            .padding(.horizontal)
//            HStack {
//                Button {
//
//                } label: {
//                    Text("Results")
//                        .font(.title3)
//                        .fontWeight(.semibold)
//                        .padding(.top)
//                        .padding(.horizontal)
//                }
//                Spacer()
//                Button {
//
//                } label: {
//                    Text("Category")
//                        .font(.title3)
//                        .fontWeight(.semibold)
//                        .padding(.top)
//                        .padding(.horizontal)
//                }
//            }.padding(.horizontal)
            TabBar(titles: titles).padding()
            SearchResult(image: Image("car3"))
            SearchResult(image: Image("car5"))
            Spacer()
        }
        
    }
}

struct SearchResult: View {
    let image: Image
    var body: some View {
        HStack(alignment: .top ) {
            image
                .resizable()
                .frame(width: 165, height: 120)
                .cornerRadius(9)
                .padding([.leading,.vertical],10)
            
            VStack(alignment: .leading) {
                VStack(alignment: .leading) {
                    Text("Center USB Hub")
                        .font(.headline)
                        .fontWeight(.medium)
                }
                .padding(.top)
                Text("50$")
                    .fontWeight(.semibold)
                    .padding(.top,0.5)
                HStack() {
                    Spacer()
                    Button {

                    } label: {
                        Image(systemName: "heart")
                            .resizable()
                            .frame(width: 27,height: 25)
                            .foregroundColor(.black)

                    }
                }
                .frame(maxWidth: .infinity,alignment: .leading)
                .padding(.trailing)
            }
        }
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .stroke(.black, lineWidth: 0.5)
        )
        .padding(.horizontal,25)
        .padding(.bottom,5)
//        .background(Color(.gray))
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
