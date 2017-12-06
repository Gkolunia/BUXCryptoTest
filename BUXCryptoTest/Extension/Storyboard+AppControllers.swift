//
//  Storyboard+AppControllers.swift
//  BUXCryptoTest
//
//  Created by Gkol on 12/6/17.
//  Copyright © 2017 Hrybenuik Mykola. All rights reserved.
//

import UIKit

fileprivate struct StoryBoard {
    static let kCurrencyListControllerId = "CurrencyListControllerID"
    static let kTradeControllerId = "TradeControllerID"
}

// MARK: - Default controllers of application in main story board. Just for convenience usage.
extension UIStoryboard {
    
    class func main() -> UIStoryboard {
        return UIStoryboard(name: "Main", bundle: nil)
    }
    
    class func currencyListController() -> CurrencyListViewController {
        return main().instantiateViewController(withIdentifier: StoryBoard.kCurrencyListControllerId) as! CurrencyListViewController
    }
    
    class func tradeController() -> TradeViewController {
        return main().instantiateViewController(withIdentifier: StoryBoard.kTradeControllerId) as! TradeViewController
    }
    
}
