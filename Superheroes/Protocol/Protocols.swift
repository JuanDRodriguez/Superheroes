//
//  Protocols.swift
//  Superheroes
//
//  Created by JRodriguez on 10/29/19.
//  Copyright © 2019 JRodriguez. All rights reserved.
//

import Foundation
protocol SuperheoresViewInput {
    var dataSource: SuperheroesDataSource! {get set}
    var itemAction: ((SuperheroeItem) -> Void)? {get set}
    func display(_ items: [SuperheroeItem])
}
protocol SuperheoresModelOutput {
    func modelDidload(_ items: [SuperheroeItem])
    func modelDidloadFail(message:String)
}
protocol SuperheoresModelInput {
    func load()
}
protocol DetailViewInput {
    func display(_ item: SuperheroeItem)
}
protocol DetailViewControllerInput {
    func setItem(_ item: SuperheroeItem)
}
