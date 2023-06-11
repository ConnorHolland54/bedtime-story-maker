//
//  BookModel.swift
//  bedtime-story-maker
//
//  Created by Connor Holland on 6/10/23.
//

import Foundation

struct Book {
    let title: String
    let bookImage: String
    let pages: [Page]
}

struct Page {
    let pageText: String
    let pageImage: String
}
