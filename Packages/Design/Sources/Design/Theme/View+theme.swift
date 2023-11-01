import SwiftUI

public extension View {
    @inlinable
    func theme(_ theme: Theme) -> some View {
        environment(\.theme, theme)
    }
}
