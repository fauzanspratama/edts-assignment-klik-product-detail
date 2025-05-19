import SwiftUI

struct Badge: View {
    var label: String
    var backgroundColor: Color
    var labelColor: Color = .white
    var fontSize: CGFloat = 12
    var fontWeight: Font.Weight = .semibold
    var horizontalPadding: CGFloat = 4
    var verticalPadding: CGFloat = 2
    var cornerRadius: CGFloat = 4
    
    var body: some View {
        Text(label)
            .font(.system(size: fontSize, weight: fontWeight))
            .foregroundColor(labelColor)
            .padding(.horizontal, horizontalPadding)
            .padding(.vertical, verticalPadding)
            .background(backgroundColor)
            .cornerRadius(cornerRadius)
            .lineLimit(1)
            .frame(height: 16)
    }
}

/// Badge Variations
struct BadgeView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            HStack(spacing: 8) {
                Badge(label: "New", backgroundColor: .blue)
                Badge(label: "Sale", backgroundColor: .red)
                Badge(label: "Trending", backgroundColor: .green)
                Badge(label: "Limited", backgroundColor: .orange)
                Badge(
                    label: "Special Offers",
                    backgroundColor: Color(red: 1, green: 0.89, blue: 0.89),
                    labelColor:Color(red: 0.71, green: 0.14, blue: 0.09)
                )
            }
        }
        .padding()
    }
}

// Preview
struct BadgePreviews: PreviewProvider {
    static var previews: some View {
        BadgeView()
    }
}
