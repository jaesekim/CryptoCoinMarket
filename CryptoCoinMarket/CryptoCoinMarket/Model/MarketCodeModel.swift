//
//  MarketCodeModel.swift
//  CryptoCoinMarket
//
//  Created by 김재석 on 5/21/24.
//

import Foundation

struct MarketCodeModel {
    let market: String
    let korean: String
    let english: String
    
    enum CodingKeys: String, CodingKey {
        case market
        case korean = "korean_name"
        case english = "english_name"
    }
}
