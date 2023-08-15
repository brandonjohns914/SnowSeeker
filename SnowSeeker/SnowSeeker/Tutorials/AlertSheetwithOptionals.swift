//
//  AlertSheetwithOptionals.swift
//  SnowSeeker
//
//  Created by Brandon Johns on 8/13/23.
//

import SwiftUI

struct User: Identifiable {
    var id = "Taylor Swift"
}

struct AlertSheetwithOptionals: View {
    
    @State private var selectedUser: User? = nil
      @State private var isShowingUser = false

      var body: some View {
          Text("Hello, World!")
              .onTapGesture {
                  selectedUser = User()
                  isShowingUser = true
              }
              .alert("Welcome", isPresented: $isShowingUser) { }
      }
}

struct AlertSheetwithOptionals_Previews: PreviewProvider {
    static var previews: some View {
        AlertSheetwithOptionals()
    }
}


/*
 var body: some View {
     Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
         .onTapGesture {
             selectedUser = User()
         }
         .sheet(item: $selectedUser) { user in
             Text(user.id)
         }
 }
 
 
 var body: some View {
     Text("Hello, World!")
         .onTapGesture {
             selectedUser = User()
             isShowingUser = true
         }
         .alert("Welcome", isPresented: $isShowingUser, presenting: selectedUser) { user in
             Button(user.id) { }
         }
 }
 */
