import SwiftUI

public struct Padding {
    public let length: CGFloat
}

public extension Padding {
    static let small = Padding(length: 10)
    static let medium = Padding(length: 20)
}

public extension View {
    @inlinable
    func foo(_ edges: Edge.Set = .all, _ value: Padding) -> some View {
        padding(edges, value.length)
    }

    @inlinable
    func foo(_ value: Padding) -> some View {
        foo(.all, value)
    }
}

#Preview {
    Color.red
        .overlay {
            Color.yellow
                .foo(.medium)
        }
}
