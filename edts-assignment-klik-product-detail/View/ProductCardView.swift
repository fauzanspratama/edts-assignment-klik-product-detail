import SwiftUI

struct ProductCardView: View {
    let product: ProductData
    var onAddToCart: () -> Void
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            ZStack(alignment: .topTrailing) {
                Image(product.imageURL)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Button(action: onAddToCart) {
                    Circle()
                        .fill(Color.blue)
                        .frame(width: 32, height: 32)
                        .overlay(
                            Image(systemName: "plus")
                                .font(.system(size: 18, weight: .bold))
                                .foregroundColor(.white)
                        )
                }
                .padding(8)
            }
            
            VStack(alignment: .leading, spacing: 4) {
                // Point and Stamp
                HStack(spacing: 4) {
                    HStack(spacing: 4) {
                        Image("point")
                            .resizable()
                            .frame(width: 16, height: 16)
                        
                        Text(product.pointValue)
                            .font(.system(size: 12, weight: .bold))
                            .foregroundColor(.blue)
                            .lineLimit(1)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    .padding(.vertical, 8)
                    .padding(.horizontal, 8)
                    .frame(maxWidth: .infinity)
                    
                    Divider()
                        .frame(height: 12)
                        .overlay(Color.blue)
                    
                    HStack(spacing: 4) {
                        Image("stamp")
                            .resizable()
                            .frame(width: 16, height: 16)
                        
                        Text(product.stampValue)
                            .font(.system(size: 12, weight: .bold))
                            .foregroundColor(.blue)
                            .lineLimit(1)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    .padding(.vertical, 8)
                    .padding(.horizontal, 8)
                    .frame(maxWidth: .infinity)
                }
                .background(.blue.opacity(0.1))
                
                VStack(alignment: .leading, spacing: 8) {
                    Text(product.title)
                        .font(.system(size: 14, weight: .medium))
                        .lineLimit(2)
                        .fixedSize(horizontal: false, vertical: true)
                        .foregroundColor(Color.gray10)
                    
                    
                    Text(product.formattedCurrentPrice)
                        .font(.system(size: 16, weight: .bold))
                        .lineLimit(1)
                        .foregroundColor(Color.gray12)
                    
                    if let discount = product.discountPercentage,
                       let original = product.formattedOriginalPrice {
                        HStack(spacing: 8) {
                            Badge(
                                label: "\(discount)%",
                                backgroundColor: Color(red: 1, green: 0.89, blue: 0.89),
                                labelColor: Color(red: 0.71, green: 0.14, blue: 0.09))
                            
                            Text(original)
                                .font(.system(size: 14, weight: .medium))
                                .foregroundColor(Color.gray6)
                                .strikethrough()
                        }
                    }
                    
                    if product.bulkSavingsAvailable {
                        Badge(
                            label: "Banyak Lebih Hemat",
                            backgroundColor: Color(red: 1, green: 0.89, blue: 0.89),
                            labelColor: Color(red: 0.71, green: 0.14, blue: 0.09))
                    }
                    
                    if product.additionalPromoCount > 0 {
                        Badge(
                            label: "\(product.additionalPromoCount)+ Promo Lainnya",
                            backgroundColor: Color(red: 1, green: 0.94, blue: 0.9),
                            labelColor: Color(red: 1, green: 0.49, blue: 0.11))
                    }
                }
                .padding(8)
            }
        }
        .background(Color.white)
        .cornerRadius(8)
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color.gray4, lineWidth: 1)
        )
        .frame(width: 136)
    }
}
