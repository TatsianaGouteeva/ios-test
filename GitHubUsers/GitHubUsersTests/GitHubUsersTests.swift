//
//  GitHubUsersTests.swift
//  GitHubUsersTests
//
//  Created by Tatsiana on 7/21/20.
//  Copyright © 2020 Tatsiana. All rights reserved.
//

import XCTest
@testable import GitHubUsers

class GitHubUsersTests: XCTestCase {

    func testPropertiesContainExpectedValuesWhenUserIsInitializedWithGivenParameters() {
            // Given
            let expectedLogin = "mojombo"
            let expectedId = 1
            let expectedAvatarURLString = "https://avatars0.githubusercontent.com/u/1?v=4"
            let expectedGitHubURLString = "https://github.com/mojombo"

        
            // When
            let user = User(login: expectedLogin,
                            id: expectedId,
                            avatarURLString: expectedAvatarURLString,
                            gitHubURLString: expectedGitHubURLString)

            // Then
            XCTAssertEqual(user.login, expectedLogin)
            XCTAssertEqual(user.id, expectedId)
            XCTAssertEqual(user.avatarURLString, expectedAvatarURLString)
            XCTAssertEqual(user.gitHubURLString, expectedGitHubURLString)
        }

}
