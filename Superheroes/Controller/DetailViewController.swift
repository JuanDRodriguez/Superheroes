//
//  DetailViewController.swift
//  Superheroes
//
//  Created by JRodriguez on 10/29/19.
//  Copyright © 2019 JRodriguez. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, DetailViewControllerInput {
    
    lazy var contentView: DetailViewInput! = {return view as! DetailViewInput}()
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    func setItem(_ item: SuperheroeItem) {
        contentView.display(item)
    }
    
}
