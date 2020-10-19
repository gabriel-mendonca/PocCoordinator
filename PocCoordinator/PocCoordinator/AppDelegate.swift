//
//  AppDelegate.swift
//  PocCoordinator
//
//  Created by Gabriel Mendonça Sousa Gonçalves  on 09/10/20.
//

import UIKit
import IQKeyboardManagerSwift

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    var coordinator: StartCoordinator?
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        IQKeyboardManager.shared.enable = true
        
        let navController = UINavigationController()
        coordinator = StartCoordinator()
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = navController
        window?.makeKeyAndVisible()
        coordinator?.start(usingPresentation: .push(navigationController: navController))
        
            
        return true
    }

}

