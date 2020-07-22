//
//  NetworkServiseTest.swift
//  GitHubUsersTests
//
//  Created by Tatsiana on 7/22/20.
//  Copyright © 2020 Tatsiana. All rights reserved.
//

import XCTest

class NetworkServiseTest: XCTestCase {

    func testURLRequestWhenURLIsValid() {
        // Given
        let urlString = "https://api.github.com/users"
        let url = URL(string: urlString)

        // When
        var urlRequest = URLRequest(url: url!)

        // Then
        XCTAssertTrue(urlRequest.url?.scheme == "https")
        XCTAssertTrue(urlRequest.url?.path == "/users")
        XCTAssertTrue(urlRequest.url?.host == "api.github.com")
    }

}
