//
//  PostsFactory.swift
//  CreationalDesignPatterns
//
//  Created by rohitmakwana on 05/02/24.
//

import Foundation

final class PostsFactory {
    
    static func createPost(data: [String: Any]) -> PostProtocol? {
        
        guard let type = data["type"] as? String,
                let postType = PostType(rawValue: type) else { return nil }
        
        let author = data["author"] as? String ?? ""
        let date = data["date"] as? Date ?? Date()
        let content = data["content"] as? String ?? ""

        switch postType {
        case .test:
            return TextPost(author: author, date: date, content: content)
        case .video:
            guard let videoURL = data["video_url"] as? URL else { return nil }
            return VideoPost(author: author, date: date, content: content, videoUrl: videoURL)
        case .image:
            guard let imageURL = data["audio_url"] as? URL else { return nil }
            return ImagePost(author: author, date: date, content: content, imageUrl: imageURL)
        }
    }
}
