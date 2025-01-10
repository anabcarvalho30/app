//
//  AddBagSheet.swift
//  ToDoListApp
//
//  Created by iredefbmac_31 on 09/01/25.
//

import SwiftUI

struct AddBagSheet: View {
    @Binding var bags: [Bag]
    
    @State private var newBagName: String = ""
    @State private var selectedColor: Color = .blue
    
    var body: some View {
        VStack(spacing: 20) {
            TextField("Nome", text: $newBagName)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .shadow(color: .secondary, radius: 4, x: 0, y: 2)
            
            ColorPicker("Escolha a cor", selection: $selectedColor)
            .padding()
        }
        .padding()
        .background(Color.white)  // Fundo branco para a sheet
        .cornerRadius(30) 
        .shadow(radius: 10)
    }
}



