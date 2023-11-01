import SwiftUI

public struct ThemeReader<Content: View>: View {
    @Environment(\.theme)
    private var theme: Theme

    private let content: (Theme) -> Content

    public init(@ViewBuilder content: @escaping (Theme) -> Content) {
        self.content = content
    }

    public var body: some View {
        content(theme)
    }
}
