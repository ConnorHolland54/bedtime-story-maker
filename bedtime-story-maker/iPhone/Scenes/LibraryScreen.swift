//
//  LibraryScreen.swift
//  bedtime-story-maker
//
//  Created by Connor Holland on 6/10/23.
//

import SwiftUI

struct LibraryScreen: View {
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())]) {
                    ForEach((0..<booksTestData.count), id: \.self) { index in
                        NavigationLink {
                            BookView(book: booksTestData[index])
                        } label: {
                            BookTitleView(book: booksTestData[index])
                                .foregroundColor(.black)
                        }
                    }
                }
            }
        }
    }
}

struct LibraryScreen_Previews: PreviewProvider {
    static var previews: some View {
        LibraryScreen()
    }
}
