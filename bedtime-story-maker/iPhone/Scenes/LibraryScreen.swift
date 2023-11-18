//
//  LibraryScreen.swift
//  bedtime-story-maker
//
//  Created by Connor Holland on 6/10/23.
//

import SwiftUI

struct LibraryScreen: View {
    @State private var book: BookModel?
    
    var body: some View {
        NavigationStack {
            ScrollView {
                if let book = book {
                    NavigationLink {
                        BookView(book: book)
                    } label: {
                        BookTitleView(book: book)
                    }
                }
//                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())]) {
//                    ForEach((0..<booksTestData.count), id: \.self) { index in
//                        NavigationLink {
//                            BookView(book: booksTestData[index])
//                        } label: {
//                            BookTitleView(book: booksTestData[index])
//                                .foregroundColor(.black)
//                        }
//                    }
//                }
            }
        }
        .onAppear {
            NewBookRepository().getNewBookData { result in
                switch result {
                case .success(let model):
                    self.book = model
                case .failure(_):
                    break
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
