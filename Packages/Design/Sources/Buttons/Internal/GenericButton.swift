import SwiftUI
import Utils
import Theme

struct GenericButton<Label: View>: View {
    @Environment(\.theme)
    private var theme: Theme

    let action: () -> Void
    let label: () -> Label

    var body: some View {
        Button(action: action) {
            label()
                .font(.body.bold())
                .padding(.vertical, 8)
                .expanding(.horizontal)
        }
        .tint(theme.tint)
    }
}

#Preview {
    VStack {
        VStack {
            PrimaryButton(action: {}) {
                Text(verbatim: "Primary")
            }
            SecondaryButton(action: {}) {
                Text(verbatim: "Secondary")
            }
            TertiaryButton(action: {}) {
                Text(verbatim: "Tertiary")
            }
        }
        VStack {
            PrimaryButton(action: {}) {
                Text(verbatim: "Primary")
            }
            SecondaryButton(action: {}) {
                Text(verbatim: "Secondary")
            }
            TertiaryButton(action: {}) {
                Text(verbatim: "Tertiary")
            }
        }
        .disabled(true)
    }
    .padding()
}
