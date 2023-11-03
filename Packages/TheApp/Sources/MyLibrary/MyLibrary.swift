import SwiftUI

public struct TheAppView: View {
    public init() {}

    public var body: some View {
        #if FOO
            Text(verbatim: "the foo app view")
        #elseif BAR
            Text(verbatim: "the bar app view")
        #else
            Text(verbatim: "the app view")
        #endif
    }
}

#Preview {
    TheAppView()
}
