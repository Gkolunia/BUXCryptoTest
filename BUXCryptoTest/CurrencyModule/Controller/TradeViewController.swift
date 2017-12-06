//
//  TradeViewController.swift
//  BUXCryptoTest
//
//  Created by Gkol on 12/6/17.
//  Copyright © 2017 Hrybenuik Mykola. All rights reserved.
//

import Foundation
import UIKit

protocol TradingOperator {
    var viewModel : CurrencyViewModel { get }
    func doBuying(_ amount: Int)
    func doSelling(_ amount: Int)
}

class TradeViewController : BaseViewController, ErrorPresentable {

    var presenter : TradingOperator!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Trade"
    }
    
    func show(_ errorViewModel: ErrorViewModel) {
    
    }
    
}
