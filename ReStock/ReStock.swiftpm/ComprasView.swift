//
//  ComprasView.swift
//  ReStock
//
//  Created by found on 17/12/24.
//
import Foundation
import SwiftUI
import SwiftData

struct ComprasView: View{
    
    let compra:Compras
    
    init (_ compra:Compras){
        self.compra = compra
    }
    
    var body: some View{
        HStack{
            Text(compra.name)
        }
    }
    
}

