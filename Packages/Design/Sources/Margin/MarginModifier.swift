import SwiftUI

struct MarginModifier: ViewModifier {
    let edges: Edge.Set
    let margin: Margin

    func body(content: Content) -> some View {
        content
            .padding(edges, value(for: margin))
    }

    private func value(for margin: Margin) -> CGFloat {
        switch margin {
        case .xs:
            return 2
        case .s:
            return 4
        case .m:
            return 8
        case .l:
            return 12
        case .xl:
            return 16
        case .xxl:
            return 20
        case .xxxl:
            return 24
        }
    }
}

#Preview {
    VStack(spacing: 0) {
        Color.red
            .overlay {
                Color.yellow
                    .margin()
            }
        Divider()
        Color.red
            .overlay {
                Color.yellow
                    .margin(.xxxl)
            }
    }
    .dynamicTypeSize(.large)
}
