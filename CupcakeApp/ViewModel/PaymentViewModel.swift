//
//  PaymentViewModel.swift
//  CupcakeApp
//
//  Created by لجين إبراهيم الكنهل on 06/11/1444 AH.
//

import Foundation
extension PaymentView{
    @MainActor class PaymentViewModel: ObservableObject{
        @Published var allMethods: [PaymentModel] = [
            PaymentModel(name: "Credit Card", image: "CreditCard"),
        PaymentModel(name: "Cash", image: "Cash"),
        PaymentModel(name: "ApplePay", image: "ApplePay")]
    }
}
