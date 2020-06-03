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
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white.opacity(0.5), lineWidth: 5))
    }
}

struct AvatarView_Previews: PreviewProvider {
    static var previews: some View {
        AvatarView(image: "steve", size: 150)
    }
}
