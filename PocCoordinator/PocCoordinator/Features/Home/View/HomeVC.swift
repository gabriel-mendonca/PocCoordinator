//
//  HomeVC.swift
//  PocCoordinator
//
//  Created by Gabriel Mendonça Sousa Gonçalves  on 16/10/20.
//

import UIKit

class HomeVC: UIViewController,UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    var viewModel: HomeViewModel?
    
    let image: Array<UIImage> = [#imageLiteral(resourceName: "pngtree-cartoon-bread-png-image_2686842")]
    let name = ["pao","bolo","rosca","cafe"]
    @IBOutlet weak var menuCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupCollectionView()
        
    }
    
    func setupCollectionView() {
        menuCollectionView.dataSource = self
        menuCollectionView.delegate = self
        menuCollectionView.register(UINib (nibName: "MenuCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "cell")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MenuCollectionViewCell
        
        cell.imageMenu.image = image[0]
        cell.nameMenu.text = name[indexPath.row]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let widht = collectionView.bounds.width / 2
        return CGSize(width: widht - 10, height: 160)
    }
    
    
    
    
    
}
