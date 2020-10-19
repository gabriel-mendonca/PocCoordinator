//
//  TabBarCoordinator.swift
//  PocCoordinator
//
//  Created by Gabriel Mendonça Sousa Gonçalves  on 16/10/20.
//

import UIKit

class TabBarCoordinator: Coordinator {
    
    var window: UIWindow!
    var view: UIViewController?
    var tabBarView: TabBarControllerVC?
    var navigation: UINavigationController?
    
    var profileCoordinator: ProfileCoordinator!
    var homeCoordinator: HomeCoordinator!
    
    
    init(navigation: UINavigationController) {
        profileCoordinator = ProfileCoordinator()
        homeCoordinator = HomeCoordinator()
        homeCoordinator.start(usingPresentation: .push(navigationController: UINavigationController()))
        tabBarView = TabBarControllerVC.instantiate()
        self.navigation = navigation
        self.window = UIApplication.shared.delegate?.window ?? UIWindow()
        
    }
    
    func start(usingPresentation presentation: PresentationType) {
        
        self.window.rootViewController = configTabBar()
        self.window.makeKeyAndVisible()
        
    }
    
    
    
    func configTabBar() -> UITabBarController {
        tabBarView?.viewControllers = [profileCoordinator.navigation!,homeCoordinator.navigation!]
        return tabBarView!
    }
    
    func stop() {
        
    }
    
    func showHome() {
        let vc = HomeVC.instantiate()
        navigation?.pushViewController(vc, animated: true)
    }
    
    func showProfile() {
        
    }

}
