//
//  ContentView.swift
//  edts-assignment-klik-product-detail
//
//  Created by Fauzan Sukmapratama on 19/05/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                VStack {
                    ProductImageView()
                    ProductInfoView()
                    RewardsSectionView()
                    PromoOptionsView()
                    ProductDescriptionView()
                    SimilarProductsView()
                        .padding(.bottom, 104)
                }
            }
            .overlay(alignment: .bottom) {
                AddToCartButtonView()
            }
            .ignoresSafeArea(edges: .bottom)
            
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        // Button Action
                    }) {
                        Image(systemName: "chevron.left")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(Color.gray6)
                            .frame(width: 24, height: 24)
                    }
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        // Button Action
                    }) {
                        Image(systemName: "heart.fill")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(Color.gray6)
                            .frame(width: 24, height: 24)
                    }
                }
            }
        }
    }
}

/// Product Image
struct ProductImageView: View {
    var body: some View {
        ZStack(alignment: .topLeading) {
            Image("Greenfields")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: .infinity)
                .background(Color.white)
        }
        
        Divider()
            .overlay(Color.gray5)
    }
}

/// Product Info
struct ProductInfoView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Greenfields Keju Mozzarella 200 gr")
                .font(.system(size: 18, weight: .bold))
                .foregroundColor(Color.gray12)
            
            Text("Rp24.000")
                .font(.system(size: 18, weight: .bold))
                .foregroundColor(Color.gray12)
            
            HStack(alignment: .firstTextBaseline, spacing: 8) {
                
                Badge(
                    label: "Special Offers",
                    backgroundColor: Color(red: 1, green: 0.89, blue: 0.89),
                    labelColor:Color(red: 0.71, green: 0.14, blue: 0.09)
                )
                
                Text("Rp48.000")
                    .font(.system(size: 14, weight: .medium))
                    .foregroundColor(Color.gray6)
                    .strikethrough()
                
            }
            .padding(.top, 4)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal, 16)
        .padding(.vertical, 20)
        .background(Color.white)
    }
}

/// Point and Stamp
struct RewardsSectionView: View {
    var body: some View {
        VStack(spacing: 20) {
            HStack(spacing: 8) {
                // Point
                HStack(spacing: 8) {
                    Image("point")
                        .resizable()
                        .frame(width: 28, height: 28)
                    
                    VStack(alignment: .leading) {
                        Text("Point")
                            .font(.system(size: 12, weight: .semibold))
                            .foregroundColor(Color.gray6)
                        
                        HStack {
                            Text("Beli 1, +10 Point")
                                .font(.system(size: 12, weight: .bold))
                                .foregroundColor(.blue)
                                .lineLimit(1)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                            Button(action: {}) {
                                Image(systemName: "info.circle.fill")
                                    .foregroundColor(Color.gray6)
                                    .font(.system(size: 16))
                            }
                        }
                    }
                }
                .padding(.vertical, 8)
                .padding(.horizontal, 8)
                .cornerRadius(8)
                .background(Color.white)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.gray4, lineWidth: 1)
                )
                .frame(maxWidth: .infinity)
                
                // Stamp
                HStack(spacing: 6) {
                    Image("stamp")
                        .resizable()
                        .frame(width: 28, height: 28)
                    
                    VStack(alignment: .leading) {
                        Text("Stamp")
                            .font(.system(size: 12, weight: .semibold))
                            .foregroundColor(Color.gray6)
                        
                        HStack {
                            Text("Beli 1, +9 Stamp")
                                .font(.system(size: 12, weight: .bold))
                                .foregroundColor(.blue)
                                .lineLimit(1)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                            Button(action: {}) {
                                Image(systemName: "info.circle.fill")
                                    .foregroundColor(Color.gray6)
                                    .font(.system(size: 16))
                            }
                        }
                    }
                }
                .padding(.vertical, 8)
                .padding(.horizontal, 8)
                .cornerRadius(8)
                .background(Color.white)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.gray4, lineWidth: 1)
                )
                .frame(maxWidth: .infinity)
                
            }
            .padding(.horizontal)
            
            // On-Site Message
            HStack(spacing: 8) {
                Image(systemName: "info.circle.fill")
                    .foregroundColor(.blue)
                
                Text("Batas maksimal pembelian promo: 1/transaksi")
                    .font(.system(size: 14))
                    .foregroundColor(Color.gray12)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .lineLimit(1)
            }
            .padding(.vertical, 12)
            .padding(.horizontal, 12)
            .background(Color(red: 0.95, green: 0.98, blue: 1))
            .cornerRadius(8)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.blue, lineWidth: 1)
            )
            .padding(.horizontal)
            
            Divider()
                .overlay(Color.gray5)
        }
    }
}

/// Promo Options
struct PromoOptionsView: View {
    private let promoViewModel = PromoOptionViewModel()
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack {
                Text("Pilihan Promo Tersedia")
                    .font(.system(size: 16, weight: .bold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(Color.gray12)
                
                
                Button(action: {}) {
                    Text("Lihat Semua")
                        .font(.system(size: 14, weight: .bold))
                        .foregroundColor(.blue)
                }
            }
            .padding(.horizontal)
            .padding(.top, 20)
            .padding(.bottom, 16)
            
            PromoOptionView(viewModel: promoViewModel)
                .padding(.bottom, 20)
        }
        
        Divider()
            .overlay(Color.gray5)
    }
}

/// Product Desctiption
struct ProductDescriptionView: View {
    @State private var isExpanded = false
    @State private var productDescription: String = "Minuman susu ini kaya akan vitamin dan mineral yang penting untuk mendukung kesehatan tubuh Anda. Diproses dengan teknologi Ultra High Temperature (UHT) modern, susu ini memiliki daya tahan lebih lama tanpa bahan pengawet tambahan, sambil tetap menjaga kandungan gizinya."
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Deskripsi")
                .font(.system(size: 16, weight: .bold))
                .foregroundColor(Color.gray12)
            
            Text(productDescription)
                .font(.system(size: 14))
                .foregroundColor(Color.gray6)
                .lineLimit(isExpanded ? nil : 3)
            
            Button(action: {
                withAnimation {
                    isExpanded.toggle()
                }
            }) {
                Text(isExpanded ? "Lebih Sedikit" : "Selengkapnya")
                    .font(.system(size: 14, weight: .bold))
                    .foregroundColor(.blue)
            }
        }
        .padding(.vertical, 20)
        .padding(.horizontal)
        .background(Color.white)
        
        Divider()
            .overlay(Color.gray5)
    }
}

/// Similar Product
struct SimilarProductsView: View {
    @State private var similarProducts: [ProductData] = [
        ProductData(
            imageURL: "upsell_product_1",
            pointValue: "+90",
            stampValue: "+80",
            title: "Greenfields Yoghurt Strawberry Cup 500 gr",
            currentPrice: 24000,
            originalPrice: 48000,
            discountPercentage: 50,
            bulkSavingsAvailable: true,
            additionalPromoCount: 2),
        
        ProductData(
            imageURL: "upsell_product_2",
            pointValue: "+90",
            stampValue: "+80",
            title: "Greenfields Susu Fresh Milk Low Fat Caffe Latte 320 ml",
            currentPrice: 24000,
            originalPrice: 48000,
            discountPercentage: 50,
            bulkSavingsAvailable: true,
            additionalPromoCount: 2),
        
        ProductData(
            imageURL: "upsell_product_3",
            pointValue: "+90",
            stampValue: "+80",
            title: "Greenfields Susu UHT Cokelat 105 ml",
            currentPrice: 24000,
            originalPrice: 48000,
            discountPercentage: 50,
            bulkSavingsAvailable: true,
            additionalPromoCount: 2),
        
        ProductData(
            imageURL: "upsell_product_4",
            pointValue: "+90",
            stampValue: "+80",
            title: "Greenfields Susu UHT Vanilla Chamomile Extra Chill 200 ml",
            currentPrice: 24000,
            originalPrice: 48000,
            discountPercentage: 50,
            bulkSavingsAvailable: true,
            additionalPromoCount: 2),
        
        ProductData(
            imageURL: "upsell_product_5",
            pointValue: "+90",
            stampValue: "+80",
            title: "Greenfields Yoghurt Strawberry Pouch 110 gr",
            currentPrice: 24000,
            originalPrice: 48000,
            discountPercentage: 50,
            bulkSavingsAvailable: true,
            additionalPromoCount: 2)
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            HStack {
                Text("Produk Serupa")
                    .font(.system(size: 16, weight: .bold))
                    .foregroundColor(Color.gray12)
                
                Spacer()
                
                Button("Lihat Semua") {
                    // Navigate to all similar products
                }
                .font(.system(size: 14, weight: .bold))
                .foregroundColor(.blue)
            }
            .padding(.horizontal)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 8) {
                    ForEach(similarProducts.indices, id: \.self) { index in
                        ProductCardView(
                            product: similarProducts[index],
                            onAddToCart: {
                                print("Added product \(index) to cart")
                            }
                        )
                    }
                }
                .padding(.horizontal)
                .padding(.bottom, 8)
            }
        }
        .padding(.top, 20)
        .background(Color.white)
    }
}

/// Bottom Navigation Bar
struct AddToCartButtonView: View {
    var body: some View {
        Button(action: {}) {
            HStack {
                Image(systemName: "plus")
                    .font(.system(size: 16, weight: .bold))
                Text("Keranjang")
                    .font(.system(size: 16, weight: .bold))
            }
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            .padding(.vertical, 14)
            .background(Color.blue)
            .cornerRadius(8)
            .padding(.horizontal, 20)
            .padding(.bottom, 28)
            .padding(.top)
        }
        .background(Color.white)
        .overlay(
            Rectangle()
                .inset(by: 0.5)
                .stroke(Color.gray4, lineWidth: 1)
        )
    }
}


#Preview {
    ContentView()
}
