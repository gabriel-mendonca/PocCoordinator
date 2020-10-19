//
//  LoginCoordinator.swift
//  PocCoordinator
//
//  Created by Gabriel Mendonça Sousa Gonçalves  on 15/10/20.
//

import UIKit

class LoginCoordinator: Coordinator {

    var tabCoordinator: TabBarCoordinator?
    var loginViewModel: LoginViewModel?
    var view: LoginVC?
    var navigation: UINavigationController?
    
    init() {
        
        view = LoginVC.instantiate()
        loginViewModel = LoginViewModel(coordinator: self)
        view?.viewModel = loginViewModel
        view?.viewModel?.delegate = self
    }
    
    func sendTabBar(_ viewModel: LoginViewModel) {
        tabCoordinator = TabBarCoordinator(navigation: self.navigation ?? UINavigationController())
        tabCoordinator?.start(usingPresentation: .push(navigationController: self.navigation ?? UINavigationController()))
    }
    
    func stop() {

    }
 
}

extension LoginCoordinator: LoginViewModelDelegate {
    func goToTabBarController(_ viewModel: LoginViewModel) {
        self.sendTabBar(viewModel)
    }
    
    
}
