//
//  User.swift
//  SwiftUIExample
//
//  Created by Rushi Sangani on 13/06/19.
//  Copyright © 2019 Rushi Sangani. All rights reserved.
//

import Foundation
import SwiftUI

/// User
struct User: Identifiable {
    
    /// unique id
    var id: String = UUID().uuidString
    
    /// user name
    let name: String
    
    /// user profile avatar
    let avatar: String
    
    /// Init
    init(name: String, avatar: String) {
        self.name = name
        self.avatar = avatar
    }
}
