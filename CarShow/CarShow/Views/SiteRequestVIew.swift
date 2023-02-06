//
//  SiteRequestVIew.swift
//  CarShow
//
//  Created by Ali Tamoor  on 06/02/2023.
//

import SwiftUI

struct SiteRequestVIew: View {
    @State var search:String = ""
    var body: some View {
        VStack {
            Text("Full Name").frame(maxWidth: .infinity,alignment: .leading)
            TextField("", text: $search)
                .padding(.horizontal)
                .padding(.vertical,10)
                .overlay(
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(ColorConstants.secondaryColorBlack, lineWidth: 1)
                )
                
        }
        .padding(.horizontal)
    }
}

struct SiteRequestVIew_Previews: PreviewProvider {
    static var previews: some View {
        SiteRequestVIew()
    }
}
