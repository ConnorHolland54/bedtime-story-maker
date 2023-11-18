//
//  BookTitleView.swift
//  bedtime-story-maker
//
//  Created by Connor Holland on 6/10/23.
//

import SwiftUI

struct BookTitleView: View {
    var book: BookModel
    var body: some View {
        VStack {
            Image("book")
                .resizable()
                .frame(width: 160, height: 130)
            Text(book.title)
                .foregroundStyle(.black)
                .bold()
        }
    }
}

struct BookTitleView_Previews: PreviewProvider {
    static var previews: some View {
        BookTitleView(book: .init(title: "", pages: []))
    }
}
