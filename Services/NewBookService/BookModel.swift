//
//  BookModel.swift
//  bedtime-story-maker
//
//  Created by Connor Holland on 11/17/23.
//

import Foundation

struct BookModel: Codable {
    let title: String
    let pages: [PageModel]
}

struct PageModel: Codable {
    let pageNumber: Int
    let sentences: [String]
}
