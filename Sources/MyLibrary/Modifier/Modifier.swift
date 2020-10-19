//
//  File.swift
//  
//
//  Created by Kritbovorn Taweeyossak on 19/10/2563 BE.
//

import SwiftUI

public struct Title: ViewModifier {
    
    public var color: Color
    
    public init(color: Color) {
        self.color = color
    }
    
    public func body(content: Content) -> some View {
        content
            .font(.largeTitle)
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
//                .modifier(Title(color: color))
                .font(.caption)
                .padding()
                .background(backgroundColor)
                .cornerRadius(12)
            
            
        }
    }
}
