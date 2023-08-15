//
//  ViewSearchable.swift
//  SnowSeeker
//
//  Created by Brandon Johns on 8/14/23.
//

import SwiftUI

struct ViewSearchable: View {
    
    @State private var searchText = ""
    
    let allNames = ["Brandon", "Kristi", "Ellie", "Henry"]
    var body: some View {
        NavigationView {
            List(filteredNames, id: \.self) { name in
                Text(name)
            }
                .searchable(text: $searchText, prompt: "Look for something")
                .navigationTitle("Searching")
        }
    }
    var filteredNames: [String] {
        if searchText.isEmpty {
            return allNames
        } else {
            return allNames.filter {$0.localizedCaseInsensitiveContains(searchText)}
        }
    }
}

struct ViewSearchable_Previews: PreviewProvider {
    static var previews: some View {
        ViewSearchable()
    }
}
