//
//  SwiftUIView.swift
//  
//
//  Created by Andre Hungaro on 2020-07-28.
//

import SwiftUI

struct PreviewGroup<Content: View>: View  {
    
    typealias ContentView = () -> Content
    
    private let content: ContentView
    private let devices: [PreviewDevice]
    
    init(devices: [PreviewDevice], @ViewBuilder _ content: @escaping ContentView) {
        self.content = content
        self.devices = devices
    }
    
    var body: some View {
        Group {
            ForEach(0..<devices.count) { index in
                content()
                    .previewDevice(devices[index])
                    .previewDisplayName(devices[index].rawValue)
            }
        }
    }
}
