//
//  SuperheroesDataSource.swift
//  Superheroes
//
//  Created by JRodriguez on 10/29/19.
//  Copyright © 2019 JRodriguez. All rights reserved.
//

import UIKit

class SuperheroesDataSource: NSObject {
    var items: [SuperheroeItem] = []
}
extension SuperheroesDataSource: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        self.items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell  = collectionView.dequeueReusableCell(withReuseIdentifier: SuperheroeCell.reuseIdentifier, for: indexPath) as! SuperheroeCell
        cell.display(item: items[indexPath.item])
        return cell
    }
}
