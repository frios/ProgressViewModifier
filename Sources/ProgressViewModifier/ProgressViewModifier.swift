import SwiftUI

public struct ProgressViewModifier: ViewModifier {
    public var color: Color
    public func body(content: Content) -> some View {
        content
            .foregroundColor(color)
            .scaleEffect(1.5, anchor: .center)
            .progressViewStyle(CircularProgressViewStyle(tint: color))
    }
}

public extension View {
    func progressStyle(color: Color = Color(.label)) -> some View {
        self.modifier(ProgressViewModifier(color: color))
    }
}
