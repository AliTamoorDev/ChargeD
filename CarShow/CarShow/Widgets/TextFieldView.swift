//
//  TextFieldView.swift
//  CarShow
//
//  Created by Ali Tamoor  on 06/02/2023.
//

import SwiftUI

struct TextFieldView:View {
    
    var fieldName: String
    var menuImage = ""
    @State var fieldText :String = ""
    
    init(fieldName: String, menuImage: String = "", fieldText: String) {
        self.fieldName = fieldName
        self.menuImage = menuImage
        self.fieldText = fieldText
    }
    
    var body: some View {
        VStack {
            Text(fieldName).frame(maxWidth: .infinity,alignment: .leading)
            TextField("", text: $fieldText)
                .padding(.horizontal)
                .padding(.vertical,10)
                .overlay(
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(ColorConstants.secondaryColorBlack, lineWidth: 1)
                )
                .frame(width:80)
                
        }
        .padding(.horizontal)
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView(fieldName: "fieldName", fieldText: "")
    }
}
