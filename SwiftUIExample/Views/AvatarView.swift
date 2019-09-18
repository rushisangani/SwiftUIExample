//
//  AvatarView.swift
//  SwiftUIExample
//
//  Created by Rushi Sangani on 14/06/19.
//  Copyright © 2019 Rushi Sangani. All rights reserved.
//

import Foundation
import SwiftUI

/// AvatarView
struct AvatarView: View {
    
    /// image
    let image: String
    
    /// size
    let size: CGFloat
    
    /// body
    var body: some View {
        Image(image)
            .resizable()
            .frame(width: size, height: size)
            .border(Color.gray.opacity(0.5), width: 0.5)
            .cornerRadius(size/2)
    }
}
