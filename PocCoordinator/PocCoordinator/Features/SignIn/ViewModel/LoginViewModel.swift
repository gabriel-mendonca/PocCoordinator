//
//  LoginViewModel.swift
//  PocCoordinator
//
//  Created by Gabriel Mendonça Sousa Gonçalves  on 15/10/20.
//

import UIKit

protocol LoginViewModelDelegate: AnyObject {
    func goToTabBarController(_ viewModel: LoginViewModel)
}

class LoginViewModel: BaseViewModel {
    
    var childCoordinator: LoginCoordinator
    public weak var delegate: LoginViewModelDelegate?
    
    init(coordinator: LoginCoordinator) {
        self.childCoordinator = coordinator
    }
    
    func sendTabBarController() {
        delegate?.goToTabBarController(self)
    }
}
