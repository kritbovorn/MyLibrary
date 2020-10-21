//
//  LayoutNavigationBarView.swift
//  SwiftUIImage
//
//  Created by Kritbovorn Taweeyossak on 21/10/2563 BE.
//

import SwiftUI

public struct LayoutNavigationBarView<Content: View, Content1: View, Content2: View>: View {
    public let centerContent: Content
    public let leftContent: Content1
    public let rightContent: Content2
    
    public init( @ViewBuilder centerContent: () -> Content, @ViewBuilder leftContent: () -> Content1, @ViewBuilder rightContent: () -> Content2) {
        self.centerContent = centerContent()
        self.leftContent = leftContent()
        self.rightContent = rightContent()

    }
    
    public var body: some View {
        
            ZStack {
                
                centerContent
                
                HStack {
                    
                    leftContent

                    
                    Spacer()
                    
                    rightContent
                    
                }
            }
            .padding(.horizontal)
    }
}

public struct LayoutNavigationBarView_Previews: PreviewProvider {
    public static var previews: some View {
        LayoutNavigationBarView(centerContent: {
            
        }, leftContent: {
            
        }, rightContent: {
            
        })
    }
}
