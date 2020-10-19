//
//  StartViewModel.swift
//  PocCoordinator
//
//  Created by Gabriel Mendonça Sousa Gonçalves  on 14/10/20.
//

import UIKit

protocol StartViewModelDelegate: AnyObject {
    func goToCreateAccount(_ viewModel: StartViewModel)
    func goToLogin(_ viewModel: StartViewModel)
}

class StartViewModel: BaseViewModel {
    
    var childCoordinator: StartCoordinator
    public weak var delegate: StartViewModelDelegate?
    
    init(coordinator: StartCoordinator) {
        self.childCoordinator = coordinator
        delegate = coordinator
    }
    
    func sendToCreateAccount() {
        delegate?.goToCreateAccount(self)
    }
    
    func sendToLogin() {
        delegate?.goToLogin(self)
    }
   
}

