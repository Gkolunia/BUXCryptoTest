//
//  TradingPresenter.swift
//  BUXCryptoTest
//
//  Created by Hrybeniuk Mykola on 12/6/17.
//  Copyright © 2017 Hrybenuik Mykola. All rights reserved.
//

import Foundation

protocol ErrorPresentable {
    func show(_ errorViewModel: ErrorViewModel)
}

class TradingPresenter: TradingOperator {
    
    let viewModel: CurrencyViewModel
    unowned let showingView: ErrorPresentable & ViewLoader
    
    init(_ defaultViewModel: CurrencyViewModel, _ defaultShowingView: ErrorPresentable & ViewLoader) {
        viewModel = defaultViewModel
        showingView = defaultShowingView
    }
    
    func doBuying(_ amount: Int) {
        
    }
    
    func doSelling(_ amount: Int) {
        
    }
    
}
