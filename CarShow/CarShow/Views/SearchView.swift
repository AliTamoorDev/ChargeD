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
                .frame(width: 200, height: 150)
                .cornerRadius(15)
            
            VStack(alignment: .leading) {
                VStack(alignment: .leading) {
                    Text("Center USB Hub")
                        .font(.headline)
                    Text("50$")
                        .fontWeight(.semibold)
                }
                .padding(.vertical)
                
                Button {

                } label: {
                    Image(systemName: "heart")
                        .resizable()
                        .frame(width: 27,height: 25)
                        .foregroundColor(.black)

                }
                .frame(maxWidth: .infinity,alignment: .trailing)
                .padding()
            }
        }
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(.black, lineWidth: 0.5)
        )
        .padding()
//        .background(Color(.gray))
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
