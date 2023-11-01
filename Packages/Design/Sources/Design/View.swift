import SwiftUI

public extension View {
    func expanding(axis: Axis.Set = [.vertical, .horizontal], alignment: Alignment = .center) -> some View {
        frame(
            maxWidth: axis.contains(.horizontal) ? .infinity : nil,
            maxHeight: axis.contains(.vertical) ? .infinity : nil,
            alignment: alignment
        )
    }
}

#Preview {
    Text(verbatim: "hello")
        .expanding(axis: .vertical)
        .background { Color.red }
}

#Preview {
    Text(verbatim: "hello")
        .expanding(axis: .horizontal)
        .background { Color.red }
}

#Preview {
    Text(verbatim: "hello")
        .expanding(axis: .horizontal, alignment: .leading)
        .background { Color.red }
}
