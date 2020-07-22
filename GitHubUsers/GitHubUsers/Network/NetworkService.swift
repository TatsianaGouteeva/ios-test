//
//  NetworkService.swift
//  GitHubUsers
//
//  Created by Tatsiana on 7/21/20.
//  Copyright © 2020 Tatsiana. All rights reserved.
//

import Foundation

class NetworkService {
    /**
     Performs network requests.
     - Parameters:
       - completion: The completion handler that accepts
       `Result` as a parameter, where the success case
       will get requested data and the failure case will get
       the details about the network error.
     */
    public func httpRequest(completion: @escaping (Result<Data, NetworkError>) -> Void) {
        let urlString = "https://api.github.com/users"
        guard let urlRequest = urlRequest(url: urlString) else {
            completion(.failure(.invalidURLRequest))
            return
        }

        networkRequest(from: urlRequest, completion: completion)
    }

    /**
     Makes a network request and calls the handler upon
     request's completion.
     - Parameters:
       - request: The `URLRequest` that represents
       information about the request.
       - completion: The completion handler that accepts
       `Result` as a parameter, where the success case
       will get requested data and the failure case will get
       the details about the network error.
     */
    private func networkRequest(from request: URLRequest, completion: @escaping (Result<Data, NetworkError>) -> Void) {

            let networkTask = URLSession.shared.dataTask(with: request) { data, response, error in
                if let error = error {
                    completion(.failure(.failedRequest(description: error.localizedDescription)))
                    return
                }
                guard let httpResponse = response as? HTTPURLResponse else {
                    completion(.failure(.nonHTTPResponse))
                    return
                }
                guard (200 ... 299).contains(httpResponse.statusCode) else {
                    completion(.failure(.badResponse(statusCode: httpResponse.statusCode)))
                    return
                }
                guard let data = data else {
                    completion(.failure(.noData))
                    return
                }
                completion(.success(data))
            }
            networkTask.resume()
    }

    /**
     Creates the `URLRequest`.
     - Parameter url: URL for creating the request.
     - Returns: A new 'URLRequest', or `nil` if it's impossible
     to construct a request.
     */
    private func urlRequest(url: String) -> URLRequest? {
        guard let url = URL(string: url) else {
            return nil
        }

        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = "GET"

        return urlRequest
    }
}
