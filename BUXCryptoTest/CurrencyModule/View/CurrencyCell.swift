//
//  CurrencyCell.swift
//  BUXCryptoTest
//
//  Created by Gkol on 12/7/17.
//  Copyright © 2017 Hrybenuik Mykola. All rights reserved.
//

import UIKit

/// Cell for showing currency view model.
class CurrencyCell: UITableViewCell, ConfigurableCell {
    typealias T = CurrencyViewModel
    
    @IBOutlet weak var currencyNameLb: UILabel!
    @IBOutlet weak var boughtAmountLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    
    func setup(with item: T) {

    }
    
}
