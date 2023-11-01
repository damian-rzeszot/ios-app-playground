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
    func padding(_ edges: Edge.Set = .all, _ value: Padding) -> some View {
        padding(edges, value.length)
    }

    @inlinable
    func padding(_ value: Padding) -> some View {
        padding(.all, value)
    }
}

#Preview {
    Color.red
        .overlay {
            Color.yellow
                .padding(.medium)
        }
}
