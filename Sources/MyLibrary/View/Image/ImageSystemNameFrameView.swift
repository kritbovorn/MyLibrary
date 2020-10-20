//
//  ImageSystemNameFrameView.swift
//  SwiftUIImage
//
//  Created by Kritbovorn Taweeyossak on 21/10/2563 BE.
//

import SwiftUI

public struct ImageSystemNameFrameView<SomeShape: Shape>: View {
    public var proxy: GeometryProxy
    public var proxyCGFloat: CGFloat
    public var proxyFrameCGFloat: CGFloat
    public var imageSystemName: String
    public var foregroundColor: Color
    public var backgroundColor: Color
    public var shape: SomeShape
    
    public init(proxy: GeometryProxy, proxyCGFloat: CGFloat, proxyFrameCGFloat: CGFloat, imageSystemName: String, foregroundColor: Color, backgroundColor: Color, shape: SomeShape) {
        self.proxy = proxy
        self.proxyCGFloat = proxyCGFloat
        self.proxyFrameCGFloat = proxyFrameCGFloat
        self.imageSystemName = imageSystemName
        self.foregroundColor = foregroundColor
        self.backgroundColor = backgroundColor
        self.shape = shape
    }
    
    public func proxyHeight(for proxy: GeometryProxy) -> CGFloat {
        let proxyHeight = proxy.size.height * proxyCGFloat
        
        return proxyHeight
    }
    
    public func proxyFrameHeight(for proxy: GeometryProxy) -> CGFloat {
        let proxyHeight = proxy.size.height * proxyFrameCGFloat
        
        return proxyHeight
    }
    
    public var body: some View {
        
        Image(systemName: imageSystemName)
            .font(.system(size: proxyHeight(for: proxy), weight: .bold))
            .foregroundColor(foregroundColor)
            .frame(width: proxyFrameHeight(for: proxy), height: proxyFrameHeight(for: proxy))
            .background(backgroundColor)
            .clipShape(shape)
            
    }
}

public struct ImageSystemNameFrameView_Previews: PreviewProvider {
    public static var previews: some View {
        GeometryReader { proxy in
            
            ImageSystemNameFrameView(proxy: proxy, proxyCGFloat: 0.1, proxyFrameCGFloat: 0.2, imageSystemName: "gear", foregroundColor: Color(.systemBlue), backgroundColor: Color(.systemRed), shape: Circle())
        }
    }
}
