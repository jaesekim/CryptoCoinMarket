//
//  NetworkManager.swift
//  CryptoCoinMarket
//
//  Created by 김재석 on 5/21/24.
//

import Foundation



class NetworkManager {
    
    static let shared = NetworkManager()
    
    private init() {}
    
    func requestAPI<T: Decodable, R: TargetType>(
        type: T.Type,
        router: R
    ) async throws -> T {
        do {
            let urlRequest = try router.asURLRequest()
            
            let (data, response) = try await URLSession.shared.data(for: urlRequest)
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                throw NetworkError.inValidResponse
            }
            
            let decoder = JSONDecoder()
            let result = try decoder.decode(type, from: data)
            
            return result
        } catch {
            throw NetworkError.urlRequestError
        }
    }
}
