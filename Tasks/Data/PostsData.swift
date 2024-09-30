//
//  PostsData.swift
//  Tasks
//
//  Created by Sebastian on 28/07/24.
//

import Foundation

let posts:[Post] = [
    Post(
        images:["nieve","pitbull"],
        user: Profile(
            image: "women",
            name: "laura")
    ),
    Post(
        images: ["sun", "pitbull"],
        user: Profile(
            image: "women",
            name: "sebas"),
        isVideo: true,
        videoURL: URL(string: "https://videos.pexels.com/video-files/856882/856882-hd_1920_1080_24fps.mp4")
    ),
    Post(
        images: ["sun", "pitbull"],
        user: Profile(
            image: "women",
            name: "sebas"),
        isVideo: true,
        videoURL: URL(string: "https://videos.pexels.com/video-files/4669749/4669749-uhd_2732_1440_25fps.mp4")
    ),
    Post(
        images: ["cat", "men-colors"],
        user: Profile(
            image: "men2",
            name: "sebas")
    ),
    Post(
        images: ["sun","nieve"],
        user: Profile(
            image: "men",
            name: "sebas")
    ),
    Post(
        images: ["men-colors"],
        user: Profile(
            image: "men2",
            name: "sebas")
    ),
    Post(
        images: ["women"],
        user: Profile(
            image: "nieve",
            name: "laura")
    ),
    Post(
        images: ["pitbull"],
        user: Profile(
            image: "cat",
            name: "sebas")
    ),
    Post(
        images: ["men", "nieve"],
        user: Profile(
            image: "sun",
            name: "sebas")
    ),
    Post(
        images: ["men2"],
        user: Profile(
            image: "men-colors",
            name: "sebas")
    ),
    Post(
        images: ["sun", "pitbull"],
        user: Profile(
            image: "women",
            name: "sebas")
    ),
    
]
