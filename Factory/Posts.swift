//
//  Posts.swift
//  CreationalDesignPatterns
//
//  Created by rohitmakwana on 05/02/24.
//

import Foundation

protocol PostProtocol {
    var author: String { get }
    var date: Date { get }
    var content: String { get }
    var type: PostType { get }
}

enum PostType {
    case text
    case image
    case video
}

final class TextPost: PostProtocol {
    var author: String
    var date: Date
    var content: String
    var type: PostType = .text
    
    init(author: String, date: Date, content: String) {
        self.author = author
        self.date = date
        self.content = content
        self.type = type
    }
}

final class VideoPost: PostProtocol {
    var author: String
    var date: Date
    var content: String
    var type: PostType = .video
    let videoUrl: URL
    
    init(author: String, date: Date, content: String = "", videoUrl: URL) {
        self.author = author
        self.date = date
        self.content = content
        self.type = type
        self.videoUrl = videoUrl
    }
}

final class ImagePost: PostProtocol {
    var author: String
    var date: Date
    var content: String
    var type: PostType = .image
    let imageUrl: URL
    
    init(author: String, date: Date, content: String = "", imageUrl: URL) {
        self.author = author
        self.date = date
        self.content = content
        self.type = type
        self.imageUrl = imageUrl
    }
}
