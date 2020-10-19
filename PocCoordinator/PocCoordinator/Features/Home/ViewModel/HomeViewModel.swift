//
//  HomeViewModel.swift
//  PocCoordinator
//
//  Created by Gabriel Mendonça Sousa Gonçalves  on 16/10/20.
//

import UIKit

protocol HomeViewModelDelegate: AnyObject {
    
}

class HomeViewModel: BaseViewModel {
    
    var childCoordinator: HomeCoordinator?
    
    init(coordinator: HomeCoordinator) {
        self.childCoordinator = coordinator
    }
    
}
