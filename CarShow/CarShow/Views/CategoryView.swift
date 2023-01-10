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
                .background(Color(#colorLiteral(red: 0.937254902, green: 0.937254902, blue: 0.937254902, alpha: 1))
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
            .padding()
            
            HStack{
                VStack(alignment: .leading) {
                    Text("Color / Color")
                        .frame(alignment: .top)
                    Spacer()
                    Stepper("\(productQuantity)", value: $productQuantity, in: 1...10)
                        .padding()
                }
                .frame(height: 120)
                .padding(.leading)
                
                image
                    .resizable()
                    .frame(width: 120, height: 120)
                    .cornerRadius(15)
                
            }
        }
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(.black, lineWidth: 0.5)
        )
        .padding(.horizontal,10)
    }
}

struct AddFromFavStack: View {
    var body: some View {
        Color(uiColor: .gray)
            .frame(maxWidth: .infinity,maxHeight: 0.5)
            .clipShape(Capsule())
        HStack {
            Image(systemName: "heart")
                .resizable()
                .frame(width: 27,height: 24)
                .foregroundColor(.black)
                .padding()
            VStack(alignment: .leading) {
                Text("Add from Favourites")
                    .font(.headline)
                Text("0 Items Added")
                    .foregroundColor(.gray)
            }
            .padding(.vertical)
            Spacer()
            Button {
                
            } label: {
                Image(systemName: "greaterthan")
                    .resizable()
                    .frame(width: 10,height: 15)
                    .foregroundColor(.black)
                    .padding()
            }
        }
        .padding()
        
    }
}
struct CalculateTotalStack: View {
    var body: some View {
        VStack {
            Color(uiColor: .gray)
                .frame(maxWidth: .infinity,maxHeight: 0.5)
                .clipShape(Capsule())
            HStack {
                Image(systemName: "tag.fill")
                    .resizable()
                    .frame(width: 27,height: 24)
                    .foregroundColor(.black)
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
            
            Color(uiColor: .gray)
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
                    .foregroundColor(.white)
                    .frame(width: 320,height: 60)
                    .background(content: {
                        Color(.black)
                    })
                    .cornerRadius(60)
                    .padding()
            }

        }
        .padding()
    }
}


struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView()
    }
}
