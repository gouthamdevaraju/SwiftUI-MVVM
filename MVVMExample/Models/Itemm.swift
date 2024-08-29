//
//  Itemm.swift
//  MVVMExample
//
//  Created by Goutham Devaraju on 29/08/24.
//

import Foundation

struct Itemm: Identifiable {
    let id: Int
    let commentCount: Int
    let score: Int
    let author: String
    let title: String
    let date: Date
    let url: URL
}

extension Itemm: Decodable {
    enum CodingKeys: String, CodingKey {
        case id, score, title, url
        case commentCount = "descendants"
        case date = "time"
        case author = "by"
    }
}
