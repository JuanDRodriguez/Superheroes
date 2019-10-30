//
//  SuperheroesInicializer.swift
//  Superheroes
//
//  Created by JRodriguez on 10/29/19.
//  Copyright © 2019 JRodriguez. All rights reserved.
//

import UIKit

class SuperheroesInicializer: NSObject {
    @IBOutlet weak var viewController: SuperheroesViewController!
    override func awakeFromNib() {
           super.awakeFromNib()
        let model = SuperheroesModel()
        viewController.model = model
        model.out = viewController
    }
}
