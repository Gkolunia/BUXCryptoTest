//
//  UsersAndPostsCoordinator.swift
//  TestQuandooTask
//
//  Created by Gkol on 10/29/17.
//  Copyright © 2017 Gkol. All rights reserved.
//

import UIKit

/// Coordinator for implementing navigation in currency module.
class CurrencyCoordinator: CoordinatorProtocol, TradingNavigator {
    
    weak var rootController : UIViewController!
    
    func start(from rootViewController: UIViewController) {
        rootController = rootViewController
        let controller = UIStoryboard.currencyListController()
        controller.presenter = CurrencyListPresenter(self, ServiceManager(), controller)
        rootController.show(controller, sender: nil)
    }
    
    func navigateToTrade(with currencyViewModel: CurrencyViewModel) {
        let controller = UIStoryboard.tradeController()
        controller.presenter = TradingPresenter(currencyViewModel, controller)
        rootController.show(controller, sender: nil)
    }
    
}
