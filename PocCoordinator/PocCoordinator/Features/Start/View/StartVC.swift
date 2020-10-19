//
//  ViewController.swift
//  PocCoordinator
//
//  Created by Gabriel Mendonça Sousa Gonçalves  on 09/10/20.
//

import UIKit

class StartVC: UIViewController {

    var viewModel: StartViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
        hideNavigationBar(animated)
        super.viewWillAppear(animated)
        self.title = "Poc Coordinator"
        
    }

    
    @IBAction func createAccount(_ sender: Any) {
        viewModel?.sendToCreateAccount()
    }
    @IBAction func login(_ sender: Any) {
        viewModel?.sendToLogin()
    }
    
}



