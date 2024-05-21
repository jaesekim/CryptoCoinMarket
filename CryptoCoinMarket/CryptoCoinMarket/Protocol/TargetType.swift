//
//  TargetType.swift
//  CryptoCoinMarket
//
//  Created by 김재석 on 5/21/24.
//

import Foundation

protocol TargetType {
    
    var baseUrl: String { get }
    var method: HTTPMethod { get }
    var path: String { get }
    var header: [String: String] { get }
    var queryItems: [URLQueryItem]? { get }
    var body: Data? { get }
}

extension TargetType {
    func asURLRequest() throws -> URLRequest {

        var urlRequest: URLRequest
        let url = URL(string: baseUrl + path)!

        if let queryItems {
            urlRequest = URLRequest(
                url: url.appending(queryItems: queryItems)
            )
        } else {
            urlRequest = URLRequest(
                url: url
            )
        }
        
        urlRequest.httpMethod = method.rawValue
        urlRequest.allHTTPHeaderFields = header
        urlRequest.httpBody = body

        return urlRequest
    }
}
