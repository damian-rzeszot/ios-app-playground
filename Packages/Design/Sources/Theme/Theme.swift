import SwiftUI

public struct Theme {
    public let primary: Color
    public let secondary: Color
    public let tint: Color
}

extension Theme {
    static let `default`: Self = .init(
        primary: .primary,
        secondary: .secondary,
        tint: .accentColor
    )
}

#Preview {
    VStack {
        ThemeReader { theme in
            let mirror = Mirror(reflecting: theme)

            ForEach(Array(mirror.children.enumerated()), id: \.offset) { (offset, element) in
                HStack {
                    Text(verbatim: element.label!)
                        .font(.footnote)
                    switch element.value {
                    case let color as Color:
                        color
                            .frame(width: 30, height: 30)
                    default:
                        Text(verbatim: "unknown")
                    }
                }
                .alignmentGuide(HorizontalAlignment.center) { dimension in
                    dimension[HorizontalAlignment.trailing]
                }
            }
        }
    }
    .padding()
}
