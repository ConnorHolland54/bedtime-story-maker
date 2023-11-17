//
//  HomeScreen.swift
//  bedtime-story-maker
//
//  Created by Connor Holland on 6/10/23.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        CustomTabView()
    }
}

struct CustomTabView: View {
    init() {
        UITabBar.appearance().backgroundColor = .black
        UITabBar.appearance().alpha = 0.9
        UITabBar.appearance().barTintColor = .gray
    }
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
        .tint(.white)
        .onAppear {
            NewBookRepository().getNewBookData { result in
                switch result {
                case .success(let model):
                    print(model)
                case .failure(_):
                    break
                }
            }
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
