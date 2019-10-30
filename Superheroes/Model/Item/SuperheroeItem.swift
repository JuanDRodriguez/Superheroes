//
//  SuperheroeItem.swift
//  Superheroes
//
//  Created by JRodriguez on 10/29/19.
//  Copyright © 2019 JRodriguez. All rights reserved.
//

import Foundation
class SuperheroeItem: Decodable {
    var name: String
    var realName: String
    var height: String
    var photo: String
    var power: String
    var abilities: String
    var groups: String
    private enum CodingKeys: String, CodingKey{
        case name = "name"
        case realName = "realName"
        case height = "height"
        case photo = "photo"
        case power = "power"
        case abilities = "abilities"
        case groups = "groups"
    }
   required init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    self.name = try container.decodeIfPresent(String.self, forKey: .name) ?? ""
    self.realName = try container.decodeIfPresent(String.self, forKey: .realName) ?? ""
    self.photo = try container.decodeIfPresent(String.self, forKey: .photo) ?? ""
    self.height = try container.decodeIfPresent(String.self, forKey: .height) ?? ""
    self.power = try container.decodeIfPresent(String.self, forKey: .power) ?? ""
    self.abilities = try container.decodeIfPresent(String.self, forKey: .abilities) ?? ""
    self.groups = try container.decodeIfPresent(String.self, forKey: .groups) ?? ""
    }
}
class SuperheroesItem: Decodable {
    var superheroes: [SuperheroeItem]
}
