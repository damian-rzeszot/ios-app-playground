import SwiftUI

public struct TertiaryButton<Label: View>: View {
    let label: () -> Label
    let action: () -> Void

    public init(action: @escaping () -> Void, @ViewBuilder label: @escaping () -> Label) {
        self.action = action
        self.label = label
    }

    public var body: some View {
        Button(action: action) {
            label()
                .font(.body.bold())
                .expanding(.horizontal)
                .padding(.vertical, .small)
                .border(Color.black)
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    VStack {
        VStack {
            PrimaryButton(action: {}) {
                Text(verbatim: "Tertiary")
            }
            .padding()
            
            SecondaryButton(action: {}) {
                Text(verbatim: "Tertiary")
            }
            .padding()
            
            TertiaryButton(action: {}) {
                Text(verbatim: "Tertiary")
            }
            .padding()
        }
        VStack {
            PrimaryButton(action: {}) {
                Text(verbatim: "Tertiary")
            }
            .padding()
            
            SecondaryButton(action: {}) {
                Text(verbatim: "Tertiary")
            }
            .padding()
            
            TertiaryButton(action: {}) {
                Text(verbatim: "Tertiary")
            }
            .padding()
        }
        .disabled(true)
    }
}
