import SwiftUI
import Design

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink {
                    buttons
                } label: {
                    Text(verbatim: "Buttons")
                }
            }
            .navigationTitle("Showcase")
        }
    }

    var buttons: some View {
        ScrollView {
            ButtonsShowcase()
        }
        .navigationTitle("Buttons")
    }
}

#Preview {
    ContentView()
}
