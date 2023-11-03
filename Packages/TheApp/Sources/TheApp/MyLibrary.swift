import SwiftUI
import Design

#if canImport(SodaStream)
    import SodaStream

    func initialize() {
        SodaStreamSDK.start()
    }
#else
    func initialize() {
        print("...")
    }
#endif

public struct TheAppView: View {
    public init() {}

    public var body: some View {
        VStack {
            #if FOO
                Text(verbatim: "the foo app view")
            #elseif BAR
                Text(verbatim: "the bar app view")
            #else
                Text(verbatim: "the app view")
            #endif
        }
        .onAppear {
            initialize()
        }
    }
}

#Preview {
    TheAppView()
}
