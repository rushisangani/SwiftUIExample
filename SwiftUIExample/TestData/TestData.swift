//
//  TestData.swift
//  SwiftUIExample
//
//  Created by Rushi Sangani on 13/06/19.
//  Copyright © 2019 Rushi Sangani. All rights reserved.
//

import Foundation

/// Test Data
struct TestData {
    
    /// users
    static let userTimCook     =   User(name: "Tim Cook", avatar: "tim")
    static let userSteveJobs   =   User(name: "Steve Jobs", avatar: "steve")
    static let userCraig       =   User(name: "Craig Federighi", avatar: "craig")
    static let userElonMusk    =   User(name: "Elon Musk", avatar: "elon")
    
    
    
    /// posts
    static func posts() -> [Post] {
        let post1 = Post(user: userTimCook, image: "mojave",
                         content: "Cook is the chief executive officer of Apple Inc., and previously served as the company's chief operating officer under its cofounder Steve Jobs.",
                         time: "Just now")
        
        let post2 = Post(user: userSteveJobs, image: "iphone",
                         content: "Steven Jobs was an American business magnate and investor. He was the chairman, chief executive officer (CEO), and co-founder of Apple Inc.",
                         time: "2 mins ago")
        
        let post3 = Post(user: userCraig, image: "catalina",
                         content: "Craig Federighi is Apple's senior vice president of Software Engineering.",
                         time: "an hour ago")
        
        let post4 = Post(user: userElonMusk, image: "tesla",
                         content: "Elon Musk FRS is a technology entrepreneur, investor, and engineer.",
                         time: "yesterday")
        
        return [post1, post2, post3, post4]
    }
    
    
    /// statuses
    static func statuses() -> [Status] {
        let status1 = Status(user: userSteveJobs, image: "nature1")
        let status2 = Status(user: userTimCook, image: "nature2")
        let status3 = Status(user: userElonMusk, image: "nature3")
        let status4 = Status(user: userCraig, image: "nature4")
        
        return [status1, status2, status3, status4]
    }
}
