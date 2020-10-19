//
//  LoginViewController.swift
//  PocCoordinator
//
//  Created by Gabriel Mendonça Sousa Gonçalves  on 10/10/20.
//

import UIKit

class LoginVC: UIViewController {
    

    var viewModel: LoginViewModel?
    
    @IBOutlet weak var textFieldEmail: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        textFieldEmail.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        showNavigationBar(animated)
        super.viewWillAppear(animated)
        self.title = "Login"
    }
    @IBAction func sendHome(_ sender: Any) {
//        validate()
        viewModel?.sendTabBarController()
        
    }
    
    
    @IBAction func loginChangeEdit(_ sender: UITextField) {
        if (sender.text?.first)?.isNumber != nil {
            textFieldEmail.TipoMascaraUsar = 0
        } else {
            textFieldEmail.TipoMascaraUsar = 2
        }
    }
    
    func validate() {
        
        guard textFieldEmail.text != "" else {
            alerta(titulo: "Atenção", message: "Preencha o campo EMAIL/CPF!")
            return
        }
        guard (textFieldEmail.text ?? "").isEmailValido() || (textFieldEmail.text ?? "").isCPFValido else {
            self.alerta(titulo: "Atencao", message: "Digite um cpf ou email valido!")
            return
        }
        
        guard textFieldPassword.text != "" else {
            alerta(titulo: "Atenção", message: "Preencha o campo PASSWORD!")
            return
        }
        
    }
    
    func alerta(titulo: String, message: String) {
        let alerta = UIAlertController(title: titulo, message: message, preferredStyle: .alert)
        let button = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alerta.addAction(button)
        present(alerta, animated: true, completion: nil)
        
    }
    


}
