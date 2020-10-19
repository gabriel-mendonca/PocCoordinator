//
//  ProfileVC.swift
//  PocCoordinator
//
//  Created by Gabriel Mendonça Sousa Gonçalves  on 16/10/20.
//

import UIKit

class ProfileVC: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var ProfileTableView: UITableView!
    let names = ["editar perfil","perguntas frequentes","regulamentos","sair"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTableView()
    }
    
    func setupTableView() {
        ProfileTableView.dataSource = self
        ProfileTableView.delegate = self
        ProfileTableView.register(UINib (nibName: "ProfileTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ProfileTableViewCell
        
        cell.title.text = names[indexPath.count]
        cell.layer.borderWidth = 0.5
        cell.layer.borderColor = UIColor.darkGray.cgColor
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let temp = UIView()
        temp.alpha = 0
        return temp
    }
    
    
}
