//
//  ContentView.swift
//  SwiftUIExample
//
//  Created by Rushi Sangani on 13/06/19.
//  Copyright © 2019 Rushi Sangani. All rights reserved.
//

import SwiftUI

/// Main Content View
struct ContentView : View {
    
    /// statuses
    let statuses = TestData.statuses()
    
    /// posts
    let posts = TestData.posts()
    
    /// view body
    var body: some View {
        
        NavigationView {
            List {
                
                // statuses
                ScrollView {
                    HStack(spacing: 10) {
                        ForEach(statuses.identified(by: \.id)) { status in
                            StatusView(status: status)
                        }
                    }
                    .padding(.leading, 10)
                }
                .frame(height: 190)
                
                
                // posts
                ForEach(posts.identified(by: \.id)) { post in
                    // post view
                    PostView(post: post)
                }
            }
            .padding(.leading, -20)
            .padding(.trailing, -20)
            .navigationBarTitle(Text("Home"))
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
