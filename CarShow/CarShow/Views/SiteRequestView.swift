//
//  SiteRequestVIew.swift
//  CarShow
//
//  Created by Ali Tamoor  on 06/02/2023.
//

import SwiftUI

struct SiteRequestView: View {
    @State var search: String = ""
    @State private var birthMonth: DropdownMenuOption? = nil
    @State var mapsLocation: String
    @Binding var temp: String
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text("Request Site Visit")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding()
                ScrollView(.vertical,showsIndicators: false) {
                    VStack {
                        TextFieldView(fieldName: "Name", fieldText: $temp)
                        
                        TextFieldView(fieldName: "Phone", fieldText: $temp)
                        TextFieldView(fieldName: "Email", fieldText: $temp)
                        HStack {
                            TextFieldView(fieldName: "Villa no.", fieldText: $temp)
                            TextFieldView(fieldName: "Street No.", fieldText: $temp)
                        }
                        TextFieldView(fieldName: "Neighbourhood", fieldText: $temp)
                        HStack {
                            TextFieldView(fieldName: "Maps Location", fieldText: $mapsLocation)
//                            TextField("pop", text: $mapsLocation)
                            NavigationLink(destination: MapView(locationCordinates: $mapsLocation)){
                                Text("📍Maps")
                                    .foregroundColor(ColorConstants.secondaryColorBlack)
                                    .frame(width: 80,height: 45)
                                    .background(content: {
                                        ColorConstants.primaryColorGreen
                                    })
                                    .cornerRadius(12)
                                    .padding(.top,25)
                            }
                        }
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
}

struct SiteRequestVIew_Previews: PreviewProvider {
    static var previews: some View {
        SiteRequestView(mapsLocation: "", temp: .constant(""))
    }
}
