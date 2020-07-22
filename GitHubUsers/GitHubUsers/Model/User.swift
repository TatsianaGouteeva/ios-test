//
//  User.swift
//  GitHubUsers
//
//  Created by Tatsiana on 7/21/20.
//  Copyright © 2020 Tatsiana. All rights reserved.
//

import Foundation

struct User: Codable {
    let login: String
    let id: Int
    let avatarURLString: String
    let gitHubURLString: String

    enum CodingKeys: String, CodingKey {
        case login
        case id
        case avatarURLString = "avatar_url"
        case gitHubURLString = "html_url"
    }
}
