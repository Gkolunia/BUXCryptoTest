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
    func doBuying(_ amount: String)
    func doSelling(_ amount: String)
    func currencyInputFormatting(_ inputString: String) -> String
}

class TradeViewController : BaseViewController, ErrorPresentable {

    @IBOutlet weak var amountTextField: UITextField!
    @IBOutlet weak var buyButton: UIButton!
    @IBOutlet weak var sellButton: UIButton!
    
    var presenter : TradingOperator!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Trade"
        amountTextField.addTarget(self, action: #selector(myTextFieldDidChange), for: .editingChanged)
        buyButton.isEnabled = false
        sellButton.isEnabled = false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        amountTextField.becomeFirstResponder()
    }
    
    @objc func myTextFieldDidChange(_ textField: UITextField) {
        let formatedString = presenter.currencyInputFormatting(textField.text!)
        textField.text = formatedString
        buyButton.isEnabled = formatedString.count > 0
        sellButton.isEnabled = formatedString.count > 0
    }
    
    //MARK: ErrorPresentable
    func show(_ errorViewModel: ErrorViewModel) {
        
    }
    
    //MARK: IBActions
    @IBAction func onSellClicked(_ sender: Any) {
        presenter.doBuying(amountTextField.text!)
    }
    
    @IBAction func onBuyClicked(_ sender: Any) {
        presenter.doSelling(amountTextField.text!)
    }
    
}


