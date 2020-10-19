//
//  File.swift
//  
//
//  Created by Kritbovorn Taweeyossak on 19/10/2563 BE.
//

import SwiftUI

// FIXME: - Title Modifier
public struct Title: ViewModifier {
    
    public var proxy: GeometryProxy
    public var proxyFloat: CGFloat
    public var color: Color
    public var weight: Font.Weight
    
    public func proxyHeight(for proxy: GeometryProxy) -> CGFloat {
        let proxyHeight = proxy.size.height * proxyFloat
        
        return proxyHeight
    }
    
    public init(proxy: GeometryProxy, proxyFloat: CGFloat, color: Color, weight: Font.Weight) {
        self.color = color
        self.proxy = proxy
        self.proxyFloat = proxyFloat
        self.weight = weight
    }
    
    public func body(content: Content) -> some View {
        content
            .font(.system(size: proxyHeight(for: proxy), weight: weight))
            .foregroundColor(color)
            
    }
}

public struct TitleWithPaddingAndBackground: ViewModifier {
    
    public func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.primary)
            .padding()
            .background(Color(.secondarySystemGroupedBackground))
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}



public struct WaterMark: ViewModifier {
    
    public var text: String
    public var color: Color
    public var backgroundColor: Color
    public var alignment: Alignment
    
    public init(text: String, color: Color, backgroundColor: Color, alignment: Alignment) {
        self.text = text
        self.color = color
        self.backgroundColor = backgroundColor
        self.alignment = alignment
    }

    public func body(content: Content) -> some View {
        
        ZStack(alignment: alignment) {
            content
            Text(text)
                .font(.caption)
                .padding()
                .background(backgroundColor)
                .cornerRadius(12)
            
            
        }
    }
}
