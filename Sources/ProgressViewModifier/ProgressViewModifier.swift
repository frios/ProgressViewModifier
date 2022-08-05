import SwiftUI
import UIKit

struct ProgressViewModifier: ViewModifier {
    let width: Double
    let height: Double
    let fontSize: Double
    let color: Color
    let bkColor: Color
    
    func body(content: Content) -> some View {
        content
            .frame(width: width, height: height)
            .font(.system(size: fontSize))
            .lineLimit(2)
            .foregroundColor(color)
            .scaleEffect(1.0, anchor: .center)
            .progressViewStyle(CircularProgressViewStyle(tint: color))
            .background(RoundedRectangle(cornerRadius: 20.0)
//                .foregroundColor(bkColor)
                .frame(width: width, height: height))
    }
}

extension ProgressView {
    public func progressStyle(width: Double = 500.00,
                              height: Double = 300,
                              fontSize: Double = 17.0,
                              color: Color,
                              bkColor: Color = .clear) -> some View {
        modifier(ProgressViewModifier(width: width,
                                      height: height,
                                      fontSize: fontSize,
                                      color: color,
                                      bkColor: bkColor))
    }
}
