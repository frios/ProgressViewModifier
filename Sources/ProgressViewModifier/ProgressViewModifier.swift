import SwiftUI

struct ProgressViewModifier: ViewModifier {
    let color: Color
    
    func body(content: Content) -> some View {
        content
            .foregroundColor(color)
            .scaleEffect(1.5, anchor: .center)
            .progressViewStyle(CircularProgressViewStyle(tint: color))
    }
}

public extension ProgressView {
    func progressStyle(color: Color = Color(.label)) -> some View {
        modifier(ProgressViewModifier(color: color))
    }
}
