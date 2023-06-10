//
//  bedtime_story_makerApp.swift
//  bedtime-story-maker
//
//  Created by Connor Holland on 6/10/23.
//

import SwiftUI

@main
struct bedtime_story_makerApp: App {
    var body: some Scene {
        WindowGroup {
            HomeScreen()
        }
    }
}

struct Previews_bedtime_story_makerApp_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
