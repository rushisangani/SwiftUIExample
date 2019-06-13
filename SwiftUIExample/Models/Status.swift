//
//  Status.swift
//  SwiftUIExample
//
//  Created by Rushi Sangani on 13/06/19.
//  Copyright © 2019 Rushi Sangani. All rights reserved.
//

import Foundation
import SwiftUI

/// Status
struct Status: Identifiable {
    
    /// unique id
    var id: String = UUID().uuidString
    
    /// user
    let user: User
    
    /// status image
    let image: String
    
    /// Init
    init(user: User, image: String) {
        self.user = user
        self.image = image
    }
}
