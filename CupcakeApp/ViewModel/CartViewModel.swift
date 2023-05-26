//
//  CartViewModel.swift
//  CupcakeApp
//
//  Created by لجين إبراهيم الكنهل on 06/11/1444 AH.
//

import SwiftUI


extension CartView{
    @MainActor class CartViewModel: ObservableObject{
        @Published var allItem: [CartModel] = [
            CartModel(name: "Chocolate Caramel \n Cupcake", price: 12, image: "CupcakeChocolateSmall")
        ]
    }
}

//CartModel(name: "Salt Caramel Cupcake", price: 13, image: "CupcakeCaramel"),
//CartModel(name: "Blueberry Cupcake", price: 15, image: "CupcakeBlueberry")
