import SwiftUI

public struct TertiaryButton<Label: View>: View {
    let label: () -> Label
    let action: () -> Void

    public init(action: @escaping () -> Void, @ViewBuilder label: @escaping () -> Label) {
        self.action = action
        self.label = label
    }

    public var body: some View {
        GenericButton(action: action, label: label)
            .buttonStyle(.borderless)
    }
}

#Preview {
    TertiaryButton(action: {}) {
        Text(verbatim: "Tertiary")
    }
    .padding()
}
