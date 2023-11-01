import SwiftUI

public extension View {
    @inlinable
    func expanding(_ axis: Axis.Set = [.vertical, .horizontal], alignment: Alignment = .center) -> some View {
        frame(
            maxWidth: axis.contains(.horizontal) ? .infinity : nil,
            maxHeight: axis.contains(.vertical) ? .infinity : nil,
            alignment: alignment
        )
    }
}

#Preview("Vertical center") {
    Text(verbatim: "hello")
        .expanding(.vertical)
        .background { Color.red }
}

#Preview("Vertical top") {
    Text(verbatim: "hello")
        .expanding(.vertical, alignment: .top)
        .background { Color.red }
}

#Preview("Horizontal center") {
    Text(verbatim: "hello")
        .expanding(.horizontal)
        .background { Color.red }
}

#Preview("Horizontal leading") {
    Text(verbatim: "hello")
        .expanding(.horizontal, alignment: .leading)
        .background { Color.red }
}
