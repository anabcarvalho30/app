//
//  ContentView.swift
//  ToDoListApp
//
//  Created by iredefbmac_31 on 18/12/25
//
// Ele tem nome e recebe a data da lista
// Além disso, quando o item é checado, ele recebe a data do dia de hoje e conta a quantidade de dias

import SwiftUI
import SwiftData

struct BagListView: View {
    
    //@Query var bag : [Bag]
    
    var body: some View {
        
        VStack {
            Image("ReStock")
            List{
                Section{
                } header: {
                    HStack{
                        Text("Nova compra")
                        Button{
                        }label: {
                            Spacer()
                            Image(systemName: "plus")
                                .foregroundColor(.purple)
                                .font(.system(size: 20, weight: .bold))
                        }
                    }
                }
                
                Section{
                }header: {
                    HStack{
                        Text("Compras Fixas").font(.system(size: 12, weight: .bold))
                    }
                }
                Section{
                }header: {
                    HStack{
                        Text("Listas de Compras").font(.system(size: 14, weight: .bold)).textCase(.none)
                    }
                }
                
            }
        }
    }
}
#Preview {
    BagListView()
}
