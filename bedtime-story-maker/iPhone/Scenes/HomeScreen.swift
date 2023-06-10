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
            Text("Screen 1")
                .tabItem {
                    Label("Library", systemImage: "folder.fill")
                }
            Text("Screen 2")
                .tabItem {
                    Label("New Book", systemImage: "book.fill")
                }
            Text("Screen 3")
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
