//
//  SwiftUIView.swift
//  
//
//  Created by Andre Hungaro on 2020-07-28.
//

import SwiftUI

public struct PreviewGroup<Content: View>: View  {
    
    public typealias ContentView = () -> Content
    
    private let content: ContentView
    private let devices: [PreviewDevice]
    
    public init(devices: [PreviewDevice], @ViewBuilder _ content: @escaping ContentView) {
        self.content = content
        self.devices = devices
    }
    
    public var body: some View {
        Group {
            ForEach(0..<devices.count) { index in
                content()
                    .previewDevice(devices[index])
                    .previewDisplayName(devices[index].rawValue)
            }
        }
    }
}
