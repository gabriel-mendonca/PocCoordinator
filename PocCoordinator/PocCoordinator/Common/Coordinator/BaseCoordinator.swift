//
//  BaseCooordinator.swift
//  PocCoordinator
//
//  Created by Gabriel Mendonça Sousa Gonçalves  on 14/10/20.
//

import UIKit

enum PresentationType {
    
    case modal(viewController: UIViewController)
    case push(navigationController: UINavigationController)
    
    public func associatedValue() -> Any? {
        switch self {
        case .modal(let value):
            return value
        case .push(let value):
            return value
        }
    }
}
protocol Coordinator: AnyObject {
    associatedtype V: UIViewController
    var view: V? {get set}
    var navigation: UINavigationController? {get set}
    func start() -> V
    func start(usingPresentation presentation: PresentationType)
    func stop()
}

extension Coordinator {
    func start() -> V {
        if let view = view {
            return view
        }
        fatalError("You cannot start coordinator without initializing property view!")
    }
    
    func start(usingPresentation presentation: PresentationType) {
        switch presentation {
        case .push(let navigation):
            self.navigation = navigation
            navigation.pushViewController(start(), animated: true)
        case .modal(let navigation):
            self.navigation = UINavigationController(rootViewController: start())
            guard let nav = self.navigation else { return }
            navigation.present(nav, animated: true, completion: nil)
        }
    }
    
}
