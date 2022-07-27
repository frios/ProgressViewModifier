import SwiftUI

struct ProgressViewModifier: ViewModifier {
    let color: Color
    
    func body(content: Content) -> some View {
        content
            .frame(width: 500)
            .lineLimit(2)
            .foregroundColor(color)
            .scaleEffect(1.5, anchor: .center)
            .progressViewStyle(CircularProgressViewStyle(tint: color))
    }
}

extension ProgressView {
    public func progressStyle(color: Color) -> some View {
        modifier(ProgressViewModifier(color: color))
    }
}
