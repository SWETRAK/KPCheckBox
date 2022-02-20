#if !os(macOS)
import SwiftUI
import UIKit

@available(macOS 10.15, *)
public struct KPCheckBox: View {
    
    @State var state: Bool
    var callback: (_ newValue: Bool) -> Void
    var size: Double = 22
    var checkedColor: Color = Color(UIColor.systemBlue)
    var uncheckedColor: Color = Color.secondary
    
    var body: some View {
        Image(systemName: state ? "checkmark.square.fill" : "square")
            .resizable()
            .frame(width: self.size, height: self.size)
            .aspectRatio(contentMode: .fit)
            .foregroundColor(state ? self.checkedColor : self.uncheckedColor)
            .onTapGesture {
                self.state.toggle()
                callback(self.state)
            }
    }
}
#endif
