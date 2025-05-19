//
//  ProductData.swift
//  edts-assignment-klik-product-detail
//
//  Created by Fauzan Sukmapratama on 19/05/25.
//

import Foundation

struct ProductData {
    let imageURL: String
    let pointValue: String
    let stampValue: String
    let title: String
    let currentPrice: Double
    let originalPrice: Double?
    let discountPercentage: Int?
    let bulkSavingsAvailable: Bool
    let additionalPromoCount: Int

    var formattedCurrentPrice: String {
        return "Rp\(formatNumber(currentPrice))"
    }

    var formattedOriginalPrice: String? {
        guard let originalPrice = originalPrice else { return nil }
        return "Rp\(formatNumber(originalPrice))"
    }

    private func formatNumber(_ number: Double) -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.groupingSeparator = "."
        formatter.decimalSeparator = ","
        return formatter.string(from: NSNumber(value: number)) ?? "\(number)"
    }
}
