//
//  WorkingWithSidebySideViews.swift
//  SnowSeeker
//
//  Created by Brandon Johns on 8/13/23.
//

import SwiftUI

struct WorkingWithSidebySideViews: View {
    var body: some View {
           NavigationView {
               NavigationLink {
                   Text("New secondary")
               } label: {
                   Text("Hello, world!")
               }
                   .navigationTitle("Primary")
               
               Text("Secondary")
               
               Text("Tertiary")
           }
       }
}

struct WorkingWithSidebySideViews_Previews: PreviewProvider {
    static var previews: some View {
        WorkingWithSidebySideViews()
    }
}
