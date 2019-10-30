//
//  SuperheroesView.swift
//  Superheroes
//
//  Created by JRodriguez on 10/29/19.
//  Copyright © 2019 JRodriguez. All rights reserved.
//

import UIKit

class SuperheroesView: UIView {
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    var dataSource: SuperheroesDataSource!{
    didSet{
        self.collectionView.dataSource = dataSource
        }
    }
    var itemAction: ((SuperheroeItem) -> Void)?
    override func awakeFromNib() {
        super.awakeFromNib()
        self.collectionView.delegate = self
        self.activityIndicator.startAnimating()
        self.collectionView.register(UINib(nibName: "SuperheroeCell", bundle: nil), forCellWithReuseIdentifier: SuperheroeCell.reuseIdentifier)
    } 
}
extension SuperheroesView: SuperheoresViewInput{
    
    func display(_ items: [SuperheroeItem]) {
        self.activityIndicator.stopAnimating()
        self.activityIndicator.isHidden = true
        self.dataSource.items = items
        self.collectionView.reloadData()
        
    }
 
}
extension SuperheroesView: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{


    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.itemAction?(dataSource.items[indexPath.item])
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 150, height: 180)
    }
}
