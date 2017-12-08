//
//  CurrencySerivceManager.swift
//  BUXCryptoTest
//
//  Created by Hrybeniuk Mykola on 12/6/17.
//  Copyright © 2017 Hrybenuik Mykola. All rights reserved.
//

import Foundation

extension ServiceManager : CurrencyLoaderManager {
    
    func loadRealTimePriceList(_ handler: @escaping (Bool, [CurrencyRealTimePriceModel]?, ErrorMessage?) -> ()) {
        
    }
    
    func loadAvailableCurrencyList(_ handler: @escaping (Bool, [CurrencyAvailableModel]?, ErrorMessage?) -> ()) {
        
    }
    
    func loadPurchasedCurrencyList(_ handler: @escaping (Bool, [CurrencyPurchasedModel]?, ErrorMessage?) -> ()) {
        
    }
    
    
}

extension ServiceManager : TradingManager {
    
    func sell(_ amount: Float, _ currencyId: Int, _ handler: @escaping (Bool, CurrencyTradeResultModel?, ErrorMessage?) -> ()) {
        
    }
    
    func buy(_ amount: Float, _ currencyId: Int, _ handler: @escaping (Bool, CurrencyTradeResultModel?, ErrorMessage?) -> ()) {
        
    }
    

}
