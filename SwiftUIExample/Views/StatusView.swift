//
//  StatusView.swift
//  SwiftUIExample
//
//  Created by Rushi Sangani on 13/06/19.
//  Copyright © 2019 Rushi Sangani. All rights reserved.
//

import Foundation
import SwiftUI

/// StatusView
struct StatusView: View {
    
    /// status
    let status: Status
    
    /// body
    var body: some View {
        
        // status image
        Image(status.image)
            .resizable()
            .frame(width: 110, height: 180)
            .border(Color.gray.opacity(0.5), width: 0.5, cornerRadius: 8)
            .cornerRadius(8)
            .overlay(AvatarOverlay(image: status.user.avatar))
            .overlay(NameOverlay(name: status.user.name))
    }
}

/// AvatarOverlay
struct AvatarOverlay: View {
    
    /// image
    let image: String
    
    /// gradient
    var gradient: LinearGradient {
        LinearGradient(gradient:
            Gradient(colors: [Color.gray.opacity(0.5),
                              Color.gray.opacity(0)]),
                    startPoint: .topLeading, endPoint: .center)
    }
    
    /// body
    var body: some View {
        ZStack(alignment: .topLeading) {
            
            Rectangle().fill(gradient)
            AvatarView(image: image, size: 36)
                .padding(.leading, 8)
                .padding(.top, 8)
        }
    }
}


/// NameOverlay
struct NameOverlay: View {
    
    /// name
    let name: String
    
    /// gradient
    var gradient: LinearGradient {
        LinearGradient(gradient:
            Gradient(colors: [Color.gray.opacity(0.5),
                              Color.gray.opacity(0)]),
                       startPoint: .bottomLeading, endPoint: .center)
    }
    
    /// body
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            Rectangle().fill(gradient)
            Text(name).font(.footnote).bold().lineLimit(1).padding(5)
        }
        .foregroundColor(.white)
    }
}
