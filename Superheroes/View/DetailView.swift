//
//  DetailView.swift
//  Superheroes
//
//  Created by JRodriguez on 10/29/19.
//  Copyright © 2019 JRodriguez. All rights reserved.
//

import UIKit

class DetailView: UIView, DetailViewInput {
   
    @IBOutlet weak var  imageView: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblRealName: UILabel!
    @IBOutlet weak var lblAbilitie: UILabel!
    @IBOutlet weak var lblPower: UILabel!
    @IBOutlet weak var lblGroup: UILabel!
    @IBOutlet weak var lblHeight: UILabel!
    func display(_ item: SuperheroeItem) {
        self.imageView.load(urlString: item.photo)
        self.lblName.text = item.name
        self.lblRealName.text = item.realName
        self.lblPower.text = item.power
        self.lblAbilitie.text = item.abilities
        self.lblGroup.text = item.groups
        self.lblHeight.text = item.height
    }
}
