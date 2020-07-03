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
