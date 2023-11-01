import SwiftUI

public struct SecondaryButton<Label: View>: View {
    let label: () -> Label
    let action: () -> Void

    public init(action: @escaping () -> Void, @ViewBuilder label: @escaping () -> Label) {
        self.action = action
        self.label = label
    }

    public var body: some View {
        Button(action: action) {
            label()
        }
        .buttonStyle(.bordered)
    }
}

#Preview {
    SecondaryButton {

    } label: {
        Text(verbatim: "Secondary")
    }
}
