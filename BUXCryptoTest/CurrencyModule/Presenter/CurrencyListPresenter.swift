//
//  CurrencyListPresenter.swift
//  BUXCryptoTest
//
//  Created by Gkol on 12/6/17.
//  Copyright © 2017 Hrybenuik Mykola. All rights reserved.
//

import Foundation

protocol TradingNavigator : class {
    func navigateToTrade(with currencyViewModel: CurrencyViewModel)
}

protocol CurrencyLoaderManager {
    
}

class CurrencyListPresenter: CurrencyAvailableListPreparing {
    let currencyLoader : CurrencyLoaderManager
    unowned let tradeNavigator : TradingNavigator
    
    init(_ defaultTradeNavigator : TradingNavigator, _ defaultCurrencyLoader : CurrencyLoaderManager) {
        tradeNavigator = defaultTradeNavigator
        currencyLoader = defaultCurrencyLoader
    }
    
    func loadCurrencyList() {
        
    }
    
    func doOnSelect(_ currencyViewModel: CurrencyViewModel) {
        
    }
    
}
