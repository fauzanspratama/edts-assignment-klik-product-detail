//
//  PromoItemViewModel.swift
//  edts-assignment-klik-product-detail
//
//  Created by Fauzan Sukmapratama on 19/05/25.
//

import SwiftUI

class PromoOptionViewModel: ObservableObject {
    @Published var options: [OptionItem] = [
        OptionItem(iconName: "shippingbox.fill", iconColor: .orange, label: "Paket Bundling"),
        OptionItem(iconName: "percent", iconColor: .red, label: "Banyak Lebih Hemat"),
        OptionItem(iconName: "tag.fill", iconColor: .blue, label: "Diskon Spesial"),
        OptionItem(iconName: "cart.fill", iconColor: .green, label: "Flash Sale"),
        OptionItem(iconName: "star.fill", iconColor: .yellow, label: "Pilihan Terbaik")
    ]
}

