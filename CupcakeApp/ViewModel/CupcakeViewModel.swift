//
//  CupcakeViewModel.swift
//  CupcakeApp
//
//  Created by لجين إبراهيم الكنهل on 06/11/1444 AH.
//

import Foundation
import SwiftUI

extension ContentView{
    @MainActor class CupcakeViewModel: ObservableObject{
        @Published var allCategory:[CategoryModel] = [
            CategoryModel(name: "All", image: "AllCategory", color: Color("Brown")),
            CategoryModel(name: "Chocolate", image: "Chocolate", color: Color("White")),
            CategoryModel(name: "Birries", image: "Birries", color: Color("White")),
            CategoryModel(name: "No Suger", image: "NoSugar", color: Color("White"))
        ]
        
        @Published var allCupcake:[CupcakeModel] = [
            CupcakeModel(name: "Chocolate Caramel \n Cupcake ", imageName: "CupcakeChocolateSmall", price: 12, category: "Chocolate"),
            CupcakeModel(name: "Salt Caramel \n Cupcake ", imageName: "CupcakeCaramel", price: 15, category: "Caramel"), CupcakeModel(name: "Blueberry \n Cupcake", imageName: "CupcakeBlueberry", price: 10, category: "berry")]
    

    }
}
