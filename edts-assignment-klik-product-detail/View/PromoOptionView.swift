//
//  PromoOptionView.swift
//  edts-assignment-klik-product-detail
//
//  Created by Fauzan Sukmapratama on 19/05/25.
//

import SwiftUI

struct OptionTagView: View {
    let item: OptionItem

    var body: some View {
        HStack(spacing: 8) {
            Image(systemName: item.iconName)
                .foregroundColor(item.iconColor)

            Text(item.label)
                .font(.system(size: 14, weight: .medium))
        }
        .padding(.vertical, 8)
        .padding(.horizontal, 12)
        .background(Color.white)
        .cornerRadius(8)
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color.gray.opacity(0.2), lineWidth: 1)
        )
    }
}

struct PromoOptionView: View {
    @ObservedObject var viewModel: PromoOptionViewModel

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 8) {
                ForEach(viewModel.options) { option in
                    OptionTagView(item: option)
                }
            }
            .padding(.horizontal)
            .padding(.vertical, 4)
        }
    }
}


