//
//  ViewController+extension.swift
//  PocCoordinator
//
//  Created by Gabriel Mendonça Sousa Gonçalves  on 13/10/20.
//

import Foundation
import UIKit


extension UIViewController {
    private static func genericInstance<T: UIViewController>() -> T {
        return T.init(nibName: String(describing: self), bundle: Bundle(for: self))
    }
    
    public static func instantiate() -> Self {
        return genericInstance()
    }
    
    func hideNavigationBar(_ animated: Bool) {
       self.navigationController?.setNavigationBarHidden(true, animated: animated)
       
   }
   
   func showNavigationBar(_ animated: Bool) {
       self.navigationController?.setNavigationBarHidden(false, animated: animated)
   }
}

