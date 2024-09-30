//
//  Post.swift
//  Tasks
//
//  Created by Sebastian on 28/07/24.
//

import Foundation

struct Post : Identifiable{
    let id = UUID()
    let images:[String]
    let user:Profile
    let isVideo:Bool
    let videoURL:URL?
    
    init(images: [String], user: Profile, isVideo: Bool = false, videoURL: URL? = nil) {
        self.images = images
        self.user = user
        self.isVideo = isVideo
        self.videoURL = videoURL
    }
}
