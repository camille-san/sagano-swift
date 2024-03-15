//
//  Item.swift
//  Sagano
//
//  Created by Camille on 15/3/24.
//

import Foundation

struct Item : Identifiable {

    let id = UUID()
    var name : String
    var price : Float
    var image : String

}
