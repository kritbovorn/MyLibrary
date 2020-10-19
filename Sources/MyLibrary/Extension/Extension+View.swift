//
//  File.swift
//  
//
//  Created by Kritbovorn Taweeyossak on 19/10/2563 BE.
//

import SwiftUI


extension View {
    
    public func titleStyle(color: Color) -> some View {
        self.modifier(Title(color: color))
    }
    
    public func waterMark(with text: String, color: Color, backgroundColor: Color, alignment: Alignment) -> some View {
        self.modifier(WaterMark(text: text, color: color, backgroundColor: backgroundColor, alignment: alignment))
    }
}
