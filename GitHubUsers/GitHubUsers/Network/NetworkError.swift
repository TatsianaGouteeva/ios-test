//
//  NetworkError.swift
//  GitHubUsers
//
//  Created by Tatsiana on 7/21/20.
//  Copyright © 2020 Tatsiana. All rights reserved.
//

enum NetworkError: Error {
    case badResponse(statusCode: Int)
    case failedRequest(description: String)
    case nonHTTPResponse
    case invalidURLRequest
    case noData
}
