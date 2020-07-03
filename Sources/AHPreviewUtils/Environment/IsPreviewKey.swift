//
//  IsPreviewKey.swift
//  
//
//  Created by Andre Hungaro on 2020-07-02.
//

import Foundation
import SwiftUI

public struct IsPreviewKey: EnvironmentKey {
    public static let defaultValue: Bool = false
}

@available(OSX 10.15, *)
@available(iOS 13, *)
public extension EnvironmentValues {
    
    var isPreview: Bool {
        get {
            return self[IsPreviewKey.self]
        }
        set {
            self[IsPreviewKey.self] = newValue
        }
    }
}
