import SwiftUI

struct ProgressViewModifier: ViewModifier {
    let color: Color
    let bkColor: Color?
    
    func body(content: Content) -> some View {
        content
            .frame(width: 500)
            .lineLimit(2)
            .foregroundColor(color)
            .scaleEffect(1.5, anchor: .center)
            .progressViewStyle(CircularProgressViewStyle(tint: color))
            .background(RoundedRectangle(cornerRadius: 5.0).foregroundColor(bkColor))
    }
}

extension ProgressView {
    public func progressStyle(color: Color, bkColor: Color? = nil) -> some View {
        modifier(ProgressViewModifier(color: color, bkColor: bkColor))
    }
}
