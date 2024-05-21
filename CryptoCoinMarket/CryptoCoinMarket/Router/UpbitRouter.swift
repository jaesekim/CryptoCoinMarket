//
//  UpbitRouter.swift
//  CryptoCoinMarket
//
//  Created by 김재석 on 5/21/24.
//

import Foundation

enum UpbitRouter {
    case marketCode
}

extension UpbitRouter: TargetType {
    
    var baseUrl: String {
        switch self {
        case .marketCode:
            return APIUrl.upbitBaseUrl + APIUrl.upbitVer
        }
    }

    var method: HTTPMethod {
        switch self {
        case .marketCode:
            return .get
        }
    }
    
    var path: String {
        switch self {
        case .marketCode:
            return "/market/all"
        }
    }
    
    var header: [String : String] {
        switch self {
        case .marketCode:
            return [:]
        }
    }

    var queryItems: [URLQueryItem]? {
        switch self {
        case .marketCode:
            return nil
        }
    }
    
    var body: Data? {
        switch self {
        case .marketCode:
            return nil
        }
    }
}
