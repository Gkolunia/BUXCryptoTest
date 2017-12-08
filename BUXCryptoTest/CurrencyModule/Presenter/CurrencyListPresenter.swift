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
    func loadAvailableCurrencyList(_ handler:@escaping CompletionHandler<[CurrencyAvailableModel]>)
    func loadPurchasedCurrencyList(_ handler:@escaping CompletionHandler<[CurrencyPurchasedModel]>)
    func loadRealTimePriceList(_ handler:@escaping CompletionHandler<[CurrencyRealTimePriceModel]>)
}

protocol CurrencyListView {
    func show(_ currencies: [CurrencyViewModel])
}

class CurrencyListPresenter: CurrencyAvailableListPreparing {
    let currencyLoader : CurrencyLoaderManager
    let tradeNavigator : TradingNavigator
    unowned let currenciesView : CurrencyListView & ViewLoader
    
    init(_ defaultTradeNavigator : TradingNavigator, _ defaultCurrencyLoader : CurrencyLoaderManager, _ view : CurrencyListView & ViewLoader) {
        tradeNavigator = defaultTradeNavigator
        currencyLoader = defaultCurrencyLoader
        currenciesView = view
    }
    
    func loadCurrencyList() {
        currenciesView.show([CurrencyViewModel(), CurrencyViewModel(), CurrencyViewModel(), CurrencyViewModel()])
    }
    
    func doOnSelect(_ currencyViewModel: CurrencyViewModel) {
        tradeNavigator.navigateToTrade(with: currencyViewModel)
    }
    
}
