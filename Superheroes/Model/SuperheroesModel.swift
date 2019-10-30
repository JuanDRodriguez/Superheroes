//
//  SuperheroesModel.swift
//  Superheroes
//
//  Created by JRodriguez on 10/29/19.
//  Copyright © 2019 JRodriguez. All rights reserved.
//

import UIKit

class SuperheroesModel: SuperheoresModelInput {
    var out: SuperheoresModelOutput!
    func load() {
       let network = Networking()
        network.request(){
        [unowned self] in
            if let error = $1 {
                self.out.modelDidloadFail(message: error.localizedDescription)
                return
            }
            guard let data = $0 else {
                self.out.modelDidloadFail(message: "No hay información")
                return
            }
            do{
                let jsonResponse = try JSONSerialization.jsonObject(with:
                    data, options: [])
               print("DataResponse: \(jsonResponse)")
            } catch let parsingError {
               
                print("Error", parsingError)
            }
            do {
                
                let item = try JSONDecoder().decode(SuperheroesItem.self, from: data)
                self.out.modelDidload(item.superheroes)
            }
            catch {
                 self.out.modelDidloadFail(message: "su consulta no devolvió ningun Superheroe")
            }

        }
    }

}
