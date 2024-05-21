//
//  WebSocketManager.swift
//  CryptoCoinMarket
//
//  Created by 김재석 on 5/21/24.
//

import Foundation

final class WebSocketManager: NSObject {

    static let shared = WebSocketManager()

    private override init() {}
    
    private var webSocket: URLSessionWebSocketTask?
    private var isOpen = false  // socket 열렸는 지 여부 확인 플래그
    private var timer: Timer?   // ping 보내는 용도의 타이머
}
