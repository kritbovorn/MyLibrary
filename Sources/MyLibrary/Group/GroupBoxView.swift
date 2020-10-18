//
//  GroupBoxView.swift
//  GroupBox
//
//  Created by Kritbovorn Taweeyossak on 18/10/2563 BE.
//

import SwiftUI

public struct GroupBoxView: View {
    
    public init(totalIndex: Int, title: String, subTitle: String, systemImage: String) {
        self.totalIndex = totalIndex
        self.title = title
        self.subTitle = subTitle
        self.systemImage = systemImage
    }
    
    var totalIndex: Int
    var title: String
    var subTitle: String
    var systemImage: String
    
    public var body: some View {
        
        ScrollView {
            LazyVGrid(columns: [.init(), .init()], alignment: .center, spacing: nil, pinnedViews: [], content: /*@START_MENU_TOKEN@*/{
                
                ForEach(0..<totalIndex) { index in
                    
                    GroupBox(label:
                        Label(title, systemImage: systemImage)
                                .foregroundColor(Color.red)
                        , content: {
                        Text(subTitle)
                    })
                        .groupBoxStyle(CardGroupBoxStyle(cornerRadius: 12, backgroundColor: Color(.secondarySystemBackground)))
                        
                }
            }/*@END_MENU_TOKEN@*/)
            .padding()
        }
    }
}

public struct GroupBoxView_Previews: PreviewProvider {
    public static var previews: some View {
        GroupBoxView(totalIndex: 20, title: "Heart Rate", subTitle: "Your heart rate is : 90 BPM.", systemImage: "heart.fill")
    }
}


struct PlainGroupBoxStyle: GroupBoxStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        VStack(alignment: .leading) {
            
            configuration.label
            configuration.content
        }
    }
}

struct CardGroupBoxStyle: GroupBoxStyle {
    
    var cornerRadius: CGFloat
    var backgroundColor: Color
    
    func makeBody(configuration: Configuration) -> some View {
        VStack(alignment: .leading, content: {
            configuration.label
            configuration.content
        })
        .padding()
        .background(backgroundColor)
        .clipShape(RoundedRectangle(cornerRadius: cornerRadius, style: .continuous))
    }
}
