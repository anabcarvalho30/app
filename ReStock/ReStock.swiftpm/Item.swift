//
//  Item.swift
//  ReStock
//
//  Created by found on 17/12/24.
//
import Foundation
import SwiftData

@Model
class Item{
    var desc:String
    var itemData:Date
    var isDone:Bool = false
    init(desc: String, itemData: Date, isDone: Bool) {
        self.desc = desc
        self.itemData = itemData
        self.isDone = isDone
    }
    
}

