import SwiftUI
import Buttons

struct ButtonsShowcase: View {
    var body: some View {
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
