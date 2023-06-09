//
//  CupcakePageViewModel.swift
//  CupcakeApp
//
//  Created by لجين إبراهيم الكنهل on 06/11/1444 AH.
//

import SwiftUI
extension CupcakePageView{
    @MainActor class CupcakePageViewModel: ObservableObject{
        @Published var allFacts: [NutritionFactsModel] = [
            NutritionFactsModel(name: "Calorice", value: 245.0),
            NutritionFactsModel(name: "Prot", value: 3.5),
            NutritionFactsModel(name: "Fat", value: 8.2),
            NutritionFactsModel(name: "Carbe", value: 15.8)]
    }
}



