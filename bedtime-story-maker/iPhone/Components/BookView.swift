//
//  BookView.swift
//  bedtime-story-maker
//
//  Created by Connor Holland on 6/10/23.
//

import SwiftUI

struct BookView: View {
    var book: Book
    @State private var pageIndex: Int = 0
    
    var body: some View {
        ZStack {
            Color.cyan
                .ignoresSafeArea()
            Text(book.pages[pageIndex].pageText)
            VStack {
                Spacer()
                HStack {
                    ArrowButton()
                        .rotationEffect(.degrees(180))
                        .onTapGesture {
                            if pageIndex > 0 {
                                pageIndex -= 1
                            }
                        }
                        .opacity(pageIndex == 0 ? 0 : 1)
                    Spacer()
                    ArrowButton()
                        .onTapGesture {
                            if pageIndex < book.pages.count - 1 {
                                pageIndex += 1
                            }
                        }
                        .opacity(pageIndex == book.pages.count - 1 ? 0 : 1)
                }
                .foregroundColor(.black)
                .padding()
            }
        }
    }
}

struct BookView_Previews: PreviewProvider {
    let book = booksTestData.first
    static var previews: some View {
        BookView(book: booksTestData.first!)
    }
}
