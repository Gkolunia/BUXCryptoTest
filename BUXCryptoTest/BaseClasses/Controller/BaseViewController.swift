//
//  BaseViewController.swift
//  BUXCryptoTest
//
//  Created by Hrybeniuk Mykola on 12/6/17.
//  Copyright © 2017 Hrybenuik Mykola. All rights reserved.
//

import UIKit

protocol ViewLoader : class {
    func startLoading()
    func stopLoading()
}

class BaseViewController: UIViewController, ViewLoader {
    
    func startLoading() {
    }
    
    func stopLoading() {
    }
    
    
}
