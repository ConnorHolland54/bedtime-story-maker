//
//  HomeScreen.swift
//  bedtime-story-maker
//
//  Created by Connor Holland on 6/10/23.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        TabView {
            LibraryScreen()
                .tabItem {
                    Label("Library", systemImage: "folder.fill")
                }
            Text("Screen 2")
                .tabItem {
                    Label("New Book", systemImage: "book.fill")
                }
            ProfileScreen()
                .tabItem {
                    Label("Profile", systemImage: "person.fill")
                }
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
