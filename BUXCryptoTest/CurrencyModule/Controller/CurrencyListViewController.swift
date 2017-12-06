//
//  CurrencyListController.swift
//  BUXCryptoTest
//
//  Created by Gkol on 12/6/17.
//  Copyright © 2017 Hrybenuik Mykola. All rights reserved.
//

import UIKit

/// Interface of class which prepares list of available currencies.
protocol CurrencyAvailableListPreparing {
    
    /// Make loading of users list.
    func loadCurrencyList()
    
    /// Do action on selecting one of users from list.
    func doOnSelect(_ userViewModel: CurrencyViewModel)
}

class CurrencyListViewController : UIViewController {
    
    var presenter : CurrencyAvailableListPreparing!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "List"
    }
}
