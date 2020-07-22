//
//  UserDataSorce.swift
//  GitHubUsers
//
//  Created by Tatsiana on 7/21/20.
//  Copyright © 2020 Tatsiana. All rights reserved.
//

import Foundation

struct UserDataSource {

    /**
     Receives a list of the currently authenticated users
     in GitHub.

     - Parameters:
       - completion: A completion handler that is called upon
       getting the users. Takes the array of `User` objects. If an
       error occurred while receiving users, the array is empty.
     */
    public func getUsers(completion: @escaping ([User]) -> Void) {
        NetworkService().httpRequest() { result in
            switch result {
            case .failure:
                completion([])
            case let .success(data):
                if let usersArray = try? JSONDecoder().decode([User].self, from: data) {
                    completion(usersArray)
                } else {
                    completion([])
                }
            }
        }
    }

}
