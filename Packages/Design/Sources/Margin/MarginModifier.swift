import SwiftUI

struct MarginModifier: ViewModifier {
    let edges: Edge.Set
    let margin: Margin

    func body(content: Content) -> some View {
        content
    }
}

#Preview {
    VStack(spacing: 0) {
        Color.red
            .overlay {
                Color.yellow
                    .padding(.horizontal)
//                    .modifier(MarginModifier(edges: .all, margin: .small))
            }
        Divider()
        Color.red
            .overlay {
                Color.yellow
                    .padding(.horizontal, 16)
//                    .modifier(MarginModifier(edges: .all, margin: .medium))
            }
    }
    .dynamicTypeSize(.large)
}
