import SwiftUI

public struct Theme {
    public let primary: Color
    public let secondary: Color
}

extension Theme {
    static let `default`: Self = .init(
        primary: .primary,
        secondary: .secondary
    )
}
