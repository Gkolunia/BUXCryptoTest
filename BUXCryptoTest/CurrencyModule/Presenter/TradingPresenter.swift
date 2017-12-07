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
    
    func doBuying(_ amount: String) {
        
    }
    
    func doSelling(_ amount: String) {
        
    }
    
    func currencyInputFormatting(_ inputString: String) -> String {
        var number: NSNumber!
        let formatter = NumberFormatter()
        formatter.numberStyle = .currencyAccounting
        formatter.currencySymbol = "$"
        formatter.maximumFractionDigits = 2
        formatter.minimumFractionDigits = 2
        
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
    
}
