import SwiftUI
import Design

struct ContentView: View {
    var body: some View {
        VStack {
            Text("hello world")
            Spacer()
            Divider()
            VStack {
                PrimaryButton(action: {}) {
                    Text(verbatim: "Primary")
                }
                SecondaryButton(action: {}) {
                    Text(verbatim: "Secondary")
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
