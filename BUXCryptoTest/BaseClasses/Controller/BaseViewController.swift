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
    
    weak var loadingView : UIVisualEffectView!
    
    func startLoading() {
        let effectView = UIVisualEffectView(frame: view.frame)
        effectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        effectView.effect = UIBlurEffect(style: .dark)
        view.addSubview(effectView)
        loadingView = effectView
    }
    
    func stopLoading() {
        loadingView.removeFromSuperview()
    }
    
}
