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

protocol TradingManager {
    func sell(_ amount: Float, _ currencyId: Int, _ handler:@escaping CompletionHandler<CurrencyTradeResultModel>)
    func buy(_ amount: Float, _ currencyId: Int, _ handler:@escaping CompletionHandler<CurrencyTradeResultModel>)
}

class TradingPresenter: TradingOperator {
    
    let tradingOperations : TradingManager
    let viewModel: CurrencyViewModel
    unowned let showingView: ErrorPresentable & ViewLoader
    
    init(_ defaultViewModel: CurrencyViewModel, _ defaultShowingView: ErrorPresentable & ViewLoader, _ tradingManager : TradingManager) {
        viewModel = defaultViewModel
        showingView = defaultShowingView
        tradingOperations = tradingManager
    }
    
    func doBuying(_ amount: String) {
        if let amount = getNumber(from: amount) {
            tradingOperations.sell(amount.floatValue, 0, { (success, result, error) in
                
            })
        }
        else {
            fatalError("Invalid parameter for buying operation")
        }
    }
    
    func doSelling(_ amount: String) {
        if let amount = getNumber(from: amount) {
            tradingOperations.buy(amount.floatValue, 0, { (success, result, error) in
                
            })
        }
        else {
            fatalError("Invalid parameter for selling operation")
        }
    }
    
    func currencyInputFormatting(_ inputString: String) -> String {
        var number: NSNumber!
        let formatter = getCurrentFormat()
        
        var amountWithPrefix = inputString
        
        // remove from String: "$", ".", ","
        let regex = try! NSRegularExpression(pattern: "[^0-9]", options: .caseInsensitive)
        amountWithPrefix = regex.stringByReplacingMatches(in: amountWithPrefix, options: NSRegularExpression.MatchingOptions(rawValue: 0), range: NSMakeRange(0, inputString.count), withTemplate: "")
        
        let double = (amountWithPrefix as NSString).doubleValue
        number = NSNumber(value: (double / 100))
        
        // if first number is 0 or all numbers were deleted
        guard number != 0 as NSNumber else {
            return ""
        }
        
        return formatter.string(from: number)!
    }
    
    private func getCurrentFormat() -> NumberFormatter {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currencyAccounting
        formatter.currencySymbol = "$"
        formatter.maximumFractionDigits = 2
        formatter.minimumFractionDigits = 2
        return formatter
    }
    
    private func getNumber(from amountString: String) -> NSNumber? {
        let formatter = getCurrentFormat()
        return formatter.number(from: amountString)
    }
    
}
