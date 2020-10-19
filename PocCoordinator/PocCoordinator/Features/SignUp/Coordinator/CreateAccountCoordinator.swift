//
//  SignUpCoordinator.swift
//  PocCoordinator
//
//  Created by Gabriel Mendonça Sousa Gonçalves  on 14/10/20.
//

import UIKit

class CreateAccountCoordinator: Coordinator {
    
    var createAccountViewModel: CreateAccountViewModel?
    var view: CreateAccountVC?
    var navigation: UINavigationController?
    
    init(){
        view = CreateAccountVC.instantiate()
        createAccountViewModel = CreateAccountViewModel(coordinator: self)
        view?.viewModel = createAccountViewModel
        view?.viewModel?.delegate = self
    }
        
    
    func stop() {
        view = nil
        createAccountViewModel = nil
        navigation = nil
    }
    
    func showSucess(_ viewModel: CreateAccountViewModel){
        let vc = AccountCreateSucessVC.instantiate()
        navigation?.pushViewController(vc, animated: true)
    }
    
}

extension CreateAccountCoordinator: CreateAccountViewModelDelegate {
    
    func goToUserSucessCreate(_ viewModel: CreateAccountViewModel) {
        self.showSucess(viewModel)
    }
    
    
}
