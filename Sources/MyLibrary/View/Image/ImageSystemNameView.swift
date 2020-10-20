//
//  ImageSystemNameView.swift
//  SwiftUIImage
//
//  Created by Kritbovorn Taweeyossak on 21/10/2563 BE.
//

import SwiftUI

public struct ImageSystemNameView: View {
    public var proxy: GeometryProxy
    public var proxyCGFloat: CGFloat
    public var imageSystemName: String
    public var foregroundColor: Color
    
    public func proxyHeight(for proxy: GeometryProxy) -> CGFloat {
        let proxyHeight = proxy.size.height * proxyCGFloat
        
        return proxyHeight
    }
    
    public init(proxy: GeometryProxy, proxyCGFloat: CGFloat, imageSystemName: String, foregroundColor: Color) {
        self.proxy = proxy
        self.proxyCGFloat = proxyCGFloat
        self.imageSystemName = imageSystemName
        self.foregroundColor = foregroundColor
    }
    
    public var body: some View {
        
        Image(systemName: imageSystemName)
            .font(.system(size: proxyHeight(for: proxy), weight: .bold))
            .foregroundColor(foregroundColor)

    }
}

public struct ImageSystemNameView_Previews: PreviewProvider {
    public static var previews: some View {
        
        GeometryReader { proxy in
            
            ImageSystemNameView(proxy: proxy, proxyCGFloat: 0.1, imageSystemName: "gear", foregroundColor: Color(.systemBlue))
        }
    }
}
