//
//  SearchView.swift
//  CarShow
//
//  Created by Ali Tamoor  on 29/12/2022.
//

import SwiftUI

struct SearchView: View {
    @State var search:String = ""
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
            
            Text("Results")
                .font(.title3)
                .fontWeight(.semibold)
                .padding(.top)
                .padding(.horizontal)
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
                .cornerRadius(15)
            
            VStack(alignment: .leading) {
                VStack(alignment: .leading) {
                    Text("Center USB Hub")
                        .font(.headline)
                        .fontWeight(.medium)
                }
                .padding(.vertical)
                VStack(alignment: .leading) {
                    Button {

                    } label: {
                        Image(systemName: "heart")
                            .resizable()
                            .frame(width: 27,height: 25)
                            .foregroundColor(.black)

                    }
                    Text("50$")
                        .fontWeight(.semibold)
                }
                .frame(maxWidth: .infinity,alignment: .trailing)
                .padding(.horizontal)
            }
        }
        .overlay(
            RoundedRectangle(cornerRadius: 16)
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
