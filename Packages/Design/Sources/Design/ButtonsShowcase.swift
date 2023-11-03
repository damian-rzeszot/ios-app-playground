import SwiftUI
import Buttons

public struct ButtonsShowcase: View {
    public init() {}

    public var body: some View {
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
        .padding()
    }
}

#Preview {
    ButtonsShowcase()
        .theme(.default)
}

#Preview {
    ButtonsShowcase()
        .theme(.green)
}
