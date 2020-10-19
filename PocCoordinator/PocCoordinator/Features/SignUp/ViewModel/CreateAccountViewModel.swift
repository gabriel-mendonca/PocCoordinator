//
//  CreateAccountViewModel.swift
//  PocCoordinator
//
//  Created by Gabriel Mendonça Sousa Gonçalves  on 14/10/20.
//

import UIKit

protocol CreateAccountViewModelDelegate: AnyObject {
    func goToUserSucessCreate(_ viewModel: CreateAccountViewModel)
}

class CreateAccountViewModel: BaseViewModel {
    
    var childCoordinator: CreateAccountCoordinator
    public weak var delegate: CreateAccountViewModelDelegate?
    
    init(coordinator: CreateAccountCoordinator) {
        self.childCoordinator = coordinator
        
    }
    
    func sendToUserSucess() {
        delegate?.goToUserSucessCreate(self)
    }
    
    
}
