//
//  ViewController.swift
//  Superheroes
//
//  Created by JRodriguez on 10/29/19.
//  Copyright © 2019 JRodriguez. All rights reserved.
//

import UIKit

class SuperheroesViewController: UIViewController {
    var model: SuperheoresModelInput!
    lazy var contentView: SuperheoresViewInput! = {return view as! SuperheoresViewInput}()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.contentView.dataSource = SuperheroesDataSource()
        self.contentView.itemAction = {
            self.performSegue(withIdentifier: "showDetail", sender: $0)
        }
        self.model.load()
    }
    
    func showAlert(_  message: String) -> UIAlertController{
        let alertController = UIAlertController(title: "", message: message, preferredStyle: .alert)
        let actionOk = UIAlertAction(title: "Aceptar", style: .default, handler: {(action) in
            
        })
        alertController.addAction(actionOk)
        return alertController
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail",
            let controller = segue.destination as? DetailViewControllerInput,
            let item = sender as? SuperheroeItem{
            controller.setItem(item)
        }
    }
}
extension SuperheroesViewController: SuperheoresModelOutput{
    func modelDidload(_ items: [SuperheroeItem]) {
        contentView.display(items)
    }
    
    func modelDidloadFail(message: String) {
        self.present( showAlert(message), animated: true, completion: nil)
    }
    
    
}
