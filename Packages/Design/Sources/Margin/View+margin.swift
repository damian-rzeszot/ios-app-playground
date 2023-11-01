import SwiftUI

public extension View {
    func margin(_ edges: Edge.Set = .all, _ margin: Margin) -> some View {
        modifier(MarginModifier(edges: edges, margin: margin))
    }
}

public extension View {
    @inlinable
    func margin(_ value: Margin) -> some View {
        margin(.all, value)
    }

    @inlinable
    func margin() -> some View {
        margin(.all, .standard)
    }
}
