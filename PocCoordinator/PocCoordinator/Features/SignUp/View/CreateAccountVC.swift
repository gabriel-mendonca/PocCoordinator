//
//  TesteViewController.swift
//  PocCoordinator
//
//  Created by Gabriel Mendonça Sousa Gonçalves  on 10/10/20.
//

import UIKit

class CreateAccountVC: UIViewController {

    var viewModel: CreateAccountViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        showNavigationBar(true)
        super.viewWillAppear(animated)
        self.title = "Create Account"
    }
    
    @IBAction func Continue(_ sender: Any) {
        viewModel?.sendToUserSucess()
    }
    



}
