//
//  ViewModelType.swift
//  CryptoCoinMarket
//
//  Created by 김재석 on 5/21/24.
//

import Foundation
import Combine

@MainActor
protocol ViewModelType: ObservableObject {
    
    associatedtype Input
    associatedtype Output

    var cancellable: Set<AnyCancellable> { get set }
    
    var input: Input { get set }
    var output: Output { get set }
    
    func transform()
}
