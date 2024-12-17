//
//  Compras.swift
//  ReStock
//
//  Created by found on 17/12/24.
//
import Foundation
import SwiftUI
import SwiftData

@Model
class Compras {
    var name:String
    var date:Date
    var color: Color.Resolved
    
    init(name: String, date: Date, color: Color.Resolved) {
        self.name = name
        self.date = date
        self.color = color
    }
}

