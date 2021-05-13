import SwiftUI

struct ProgressViewModifier: ViewModifier {
    var color: Color
    func body(content: Content) -> some View {
        content
            .foregroundColor(color)
            .scaleEffect(1.5, anchor: .center)
            .progressViewStyle(CircularProgressViewStyle(tint: color))
    }
}

extension View {
    public func progressStyle(color: Color = Color(.label)) -> some View {
        self.modifier(ProgressViewModifier(color: color))
    }
}
