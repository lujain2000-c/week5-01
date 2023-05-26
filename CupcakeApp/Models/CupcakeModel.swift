//
//  CupcakeModel.swift
//  CupcakeApp
//
//  Created by لجين إبراهيم الكنهل on 06/11/1444 AH.
//

import SwiftUI




struct CupcakeModel: Identifiable{
 var id = UUID()
    var name: String
    var imageName: String
    var price: Int
    var category: String
}

struct CategoryModel: Identifiable{
    var id = UUID()
    var name: String
    var image: String
    var color: Color
}
