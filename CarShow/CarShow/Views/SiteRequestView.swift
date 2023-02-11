//
//  SiteRequestVIew.swift
//  CarShow
//
//  Created by Ali Tamoor  on 06/02/2023.
//

import SwiftUI

struct SiteRequestView: View {
    @State var search:String = ""
    @State private var birthMonth: DropdownMenuOption? = nil
    var body: some View {
        VStack(alignment: .leading) {
            Text("Request Site Visit")
                .font(.title2)
                .fontWeight(.bold)
                .padding()
            ScrollView(.vertical,showsIndicators: false) {
                VStack {
                    TextFieldView(fieldName: "Name", fieldText: "name")
                    
                    TextFieldView(fieldName: "Phone", fieldText: "Phone")
                    TextFieldView(fieldName: "Email", fieldText: "email")
                    HStack {
                        TextFieldView(fieldName: "Villa no.", fieldText: "villaNo")
                        TextFieldView(fieldName: "Street No.", fieldText: "streetNo")
                    }
                    TextFieldView(fieldName: "Neighbourhood", fieldText: "neighbourhood")
//                    TextFieldView(fieldName: "Vechicle Type", fieldText: "vType")
                    VStack {
                        Text("Vehicle Type").foregroundColor(ColorConstants.secondaryColorBlack).bold()
                            .frame(maxWidth: .infinity,alignment: .leading)
                            .padding(.horizontal)
                        DropdownMenu(
                            selectedOption: self.$birthMonth,
                            placeholder: "Select your Vehicle Type",
                            options: DropdownMenuOption.testAllMonths
                        )
                        
                        //                    Text(birthMonth?.option ?? "")
                    }
                    Button {
                        
                    } label: {
                        Text("Submit")
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.bgColorWhite)
                            .frame(width: 320,height: 60)
                            .background(content: {
                                ColorConstants.primaryColorGreen
                            })
                            .cornerRadius(60)
                            .padding()
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

struct SiteRequestVIew_Previews: PreviewProvider {
    static var previews: some View {
        SiteRequestView()
    }
}
