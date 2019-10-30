//
//  UIImageView.swift
//  Superheroes
//
//  Created by JRodriguez on 10/29/19.
//  Copyright © 2019 JRodriguez. All rights reserved.
//

import UIKit
extension UIImageView{
    func load(urlString: String) {
        let url = URL(string: urlString)
        DispatchQueue.global().async { [weak self] in
            if let data = try? Data(contentsOf: url!) {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self?.image = image
                    }
                }
            }
        }
    }
}
