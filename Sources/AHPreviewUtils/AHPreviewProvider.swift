import Foundation
import SwiftUI

@available(OSX 10.15, *)
@available(iOS 13, *)
public protocol AHPreviewProvider {
    
    associatedtype CustomPreviews: View
    static var customPreviews: Self.CustomPreviews { get }
}

@available(OSX 10.15, *)
@available(iOS 13, *)
public extension AHPreviewProvider {
    
    static var previews: some View {
        Group {
            self.customPreviews
        }
         .environment(\.isPreview, true)
    }
}
