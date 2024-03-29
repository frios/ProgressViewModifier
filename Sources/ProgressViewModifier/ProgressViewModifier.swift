import SwiftUI
#if os(iOS)
import UIKit
#elseif os(macOS)
import AppKit
#endif

struct ProgressViewModifier: ViewModifier {
    let width: Double
    let height: Double
    let fontSize: Double
    let color: Color
    let bkColor: Color
    let scale: Double
    
    func body(content: Content) -> some View {
        content
            .background(RoundedRectangle(cornerRadius: 20.0)
                .foregroundColor(bkColor)
                .frame(width: width, height: height))
            .font(.system(size: fontSize))
            .lineLimit(2)
            .foregroundColor(color)
            .progressViewStyle(CircularProgressViewStyle(tint: color))
            .scaleEffect(scale, anchor: .center)
    }
}

extension ProgressView {
    public func progressStyle(width: Double = 500.00,
                              height: Double = 300,
                              fontSize: Double = 17.0,
                              color: Color,
                              bkColor: Color = .clear,
                              scale: Double = 1.0) -> some View {
        modifier(ProgressViewModifier(width: width,
                                      height: height,
                                      fontSize: fontSize,
                                      color: color,
                                      bkColor: bkColor,
                                      scale: scale))
    }
}
