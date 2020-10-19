//
//  MainCoordinator.swift
//  PocCoordinator
//
//  Created by Gabriel Mendonça Sousa Gonçalves  on 10/10/20.
//

import UIKit

class StartCoordinator: Coordinator {
    
    var loginCoordinator: LoginCoordinator?
    var createAccountCoordinator: CreateAccountCoordinator?
    var startViewModel: StartViewModel?
    var view: StartVC?
    var navigation: UINavigationController?
    
    init() {
        view = StartVC.instantiate()
        startViewModel = StartViewModel(coordinator: self)
        view?.viewModel = startViewModel
    }
    
    func stop() {
        view = nil
        startViewModel = nil
    }
    
    
    func login() {
        loginCoordinator = LoginCoordinator()
        loginCoordinator?.start(usingPresentation: .push(navigationController: navigation ?? UINavigationController()))
    }
    
    func createAccount() {
        createAccountCoordinator = CreateAccountCoordinator()
        createAccountCoordinator?.start(usingPresentation: .push(navigationController: navigation ?? UINavigationController()))
        
    }
}

extension StartCoordinator: StartViewModelDelegate {
    func goToCreateAccount(_ viewModel: StartViewModel) {
        self.createAccount()
    }
    
    func goToLogin(_ viewModel: StartViewModel) {
        self.login()
    }
    
    
}
