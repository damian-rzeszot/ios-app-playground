import SwiftUI

public enum Margin {
    case xs
    case s
    case m
    case l
    case xl
    case xxl
    case xxxl
}

public extension Margin {
    static let standard: Self = .m
}
