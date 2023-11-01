import SwiftUI

private struct ThemeEnvironmentKey: EnvironmentKey {
    static var defaultValue: Theme {
        .default
    }
}

public extension EnvironmentValues {
    var theme: Theme {
        get {
            self[ThemeEnvironmentKey.self]
        }
        set {
            self[ThemeEnvironmentKey.self] = newValue
        }
    }
}
