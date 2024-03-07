//
//  DiscoverModel.swift
//  MOOD
//
//  Created by Zain on 2024-03-06.
//

import Foundation

struct DiscoverModel: Codable {
    let discoverFeeds: DiscoverFeed

    enum CodingKeys: String, CodingKey {
        case discoverFeeds = "discover_feeds"
    }
}
