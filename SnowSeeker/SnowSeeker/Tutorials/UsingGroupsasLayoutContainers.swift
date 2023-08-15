//
//  UsingGroupsasLayoutContainers.swift
//  SnowSeeker
//
//  Created by Brandon Johns on 8/13/23.
//

import SwiftUI

struct UserView: View {
    var body: some View {
        Group {
            Text("Name: Brandon")
            Text("Country: US")
            Text("Pets: Ellie")
        }
        .font(.title)
    }
}

struct UsingGroupsasLayoutContainers: View {
    
    @Environment(\.horizontalSizeClass) var sizeClass
    
    var body: some View {
     
        if sizeClass == .compact {
                VStack {
                    UserView()
                }
            } else {
                HStack{
                    UserView()
                }
            }
       
    }
}

struct UsingGroupsasLayoutContainers_Previews: PreviewProvider {
    static var previews: some View {
        UsingGroupsasLayoutContainers()
    }
}
