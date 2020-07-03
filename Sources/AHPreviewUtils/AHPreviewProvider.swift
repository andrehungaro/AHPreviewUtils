import Foundation
import SwiftUI

public protocol AHPreviewProvider {
    
    associatedtype CustomPreviews: View
    static var customPreviews: Self.CustomPreviews { get }
}

public extension AHPreviewProvider {
    
    static var previews: some View {
        Group {
            self.customPreviews
        }
         .environment(\.isPreview, true)
    }
}
