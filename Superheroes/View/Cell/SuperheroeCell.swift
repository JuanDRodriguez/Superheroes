//
//  SuperheroeCell.swift
//  Superheroes
//
//  Created by JRodriguez on 10/29/19.
//  Copyright © 2019 JRodriguez. All rights reserved.
//

import UIKit

class SuperheroeCell: UICollectionViewCell {
    static var reuseIdentifier: String = "\(String(describing: self))"
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var llbName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.masksToBounds = true
        self.layer.cornerRadius = CGFloat(10.0)
        self.clipsToBounds = true
        self.layer.borderWidth = 0.5
        
    }
    func display(item: SuperheroeItem){
        self.imageView.load(urlString: item.photo)
        self.llbName.text = item.name
    }
}
