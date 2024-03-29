//
//  CategoryView.swift
//  CarShow
//
//  Created by Ali Tamoor  on 29/12/2022.
//

import SwiftUI

struct CategoryView: View {
    var order = 1
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading) {
                Text("My Bag")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding()
                CartProducts(image: Image("car2"))
                CartProducts(image: Image("car5"))
                CartProducts(image: Image("car3"))
                VStack {
                    AddFromFavStack()
                    CalculateTotalStack()
                }
                .background(ColorConstants.bgColorGray
                    .ignoresSafeArea())
                .cornerRadius(15)
                .padding(.vertical)
                
            }
        }
    }
}

struct CartProducts: View {
    let image: Image
    @State var productQuantity = 1
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Center USB Hub")
                    .font(.headline)
                Spacer()
                Text("50$")
                    .fontWeight(.semibold)
            }
            .padding(.horizontal)
            .padding(.top)
            
            HStack{
                VStack(alignment: .leading) {
                    Text("Color / Color")
                        .frame(alignment: .top)
                    Spacer()
                    Stepper("\(productQuantity)x      ", value: $productQuantity, in: 1...10)
                        .fixedSize()
                        .padding()
                }
                .frame(height: 95)
                .padding(.leading)
                Spacer()
                image
                    .resizable()
                    .frame(width: 110, height: 90)
                    .cornerRadius(12)
                    .padding([.bottom,.trailing],10)
                
            }
        }
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(ColorConstants.secondaryColorBlack, lineWidth: 0.8)
        )
        .padding(.horizontal,25)
    }
}

struct AddFromFavStack: View {
    var body: some View {
        ColorConstants.darkGray
            .frame(maxWidth: .infinity,maxHeight: 0.5)
            .clipShape(Capsule())
        HStack {
            Image(systemName: "heart")
                .resizable()
                .frame(width: 27,height: 24)
                .foregroundColor(ColorConstants.secondaryColorBlack)
                .padding([.top,.horizontal])
            VStack(alignment: .leading) {
                Text("Add from Favourites")
                    .font(.headline)
                Text("0 Items Added")
                    .foregroundColor(ColorConstants.darkGray)
            }
            .padding(.vertical)
            Spacer()
            Button {
                
            } label: {
                Image(systemName: "greaterthan")
                    .resizable()
                    .frame(width: 10,height: 15)
                    .foregroundColor(ColorConstants.secondaryColorBlack)
                    .padding()
            }
        }
        .padding()
        
    }
}
struct CalculateTotalStack: View {
    var body: some View {
        VStack {
            ColorConstants.darkGray
                .frame(maxWidth: .infinity,maxHeight: 0.5)
                .clipShape(Capsule())
            HStack {
                Image(systemName: "tag.fill")
                    .resizable()
                    .frame(width: 27,height: 24)
                    .foregroundColor(ColorConstants.secondaryColorBlack)
                    .padding(.trailing)
                Text("Apply Discount Or Gift Card Code")
                    .font(.headline)
            }
            .frame(maxWidth: .infinity ,alignment: .leading)
            .padding(.horizontal)
            .padding(.top)
            
            HStack {
                Text("Subtotal (3 items)")
                    .font(.body)
                Spacer()
                Text("$40")
                    .fontWeight(.semibold)
            }
            .frame(maxWidth: .infinity ,alignment: .leading)
            .padding(.horizontal)
            .padding(.top)
            
            HStack {
                Text("Shipping")
                    .font(.body)
                Spacer()
                Text("$20")
                    .fontWeight(.semibold)
            }
            .frame(maxWidth: .infinity ,alignment: .leading)
            .padding(.horizontal)
            .padding(.top,1)
            
            ColorConstants.darkGray
                .frame(maxWidth: .infinity,maxHeight: 0.5)
                .clipShape(Capsule())
            HStack {
                Text("Total")
                    .font(.headline)
                Spacer()
                Text("$60")
                    .fontWeight(.semibold)
            }
            .padding(.horizontal)
            Button {
                
            } label: {
                Text("Checkout")
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
        .padding([.bottom,.horizontal])
    }
}


struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView()
    }
}
