//
//  ContentView.swift
//  ToDoListApp
//
//  Created by iredefbmac_31 on 18/12/25
//

// Estou pensando sobre como organizar melhor as compras fixas e listas de compras, será que é realmente preciso ter um bagcard como modelo de card quando os itens da lista já serao os cards em si, eu consigo dentro do swift ui fazer essas mudanças de estilizaçao de cada card sem deixar o código desorganizado ou abarrotado? será nesse mesmo arquivo .swift ou outro?
import SwiftUI
import SwiftData

struct BagListView: View {
    
    @State private var bags: [Bag] = []  // Lista de bags
    @State private var isPresentingAddBag: Bool = false
    @State var viewModel: BagViewModel = BagViewModel()
    // var -> o que eu declaro pode mudar de valor
    // viewModel -> nome da minha variável
    // : -> Que eu vou tipar a minha variável
    // BagViewModel -> Tipo da variável
    // = -> Atribuição (Atribuir um valor a minha variável)
    // BagViewModel() -> Valor atribuido
    
    var body: some View {
        
        VStack(spacing: 0) {
            Image("ReStock")
                .padding(.bottom, 16)  // Menos espaço abaixo da imagem
            
            HStack {
                Text("NOVA COMPRA")
                    .padding(.leading)
                    .font(.system(size: 13, weight: .medium))
                    .foregroundStyle(Color.secondary)
                Spacer()
                Button {
                    isPresentingAddBag = true
                } label: {
                    Image(systemName: "plus")
                        .foregroundColor(.purple)
                        .font(.system(size: 20, weight: .bold))
                }
                .padding(.trailing)
            }
            .padding([.leading, .trailing], 25)
            
            // Seção de "Compras Fixas"
            if !viewModel.bagListFix.isEmpty {
                VStack(alignment: .leading, spacing: 5) {
                    Text("Compras Fixas")
                        .font(.system(size: 13, weight: .bold))
                        .foregroundStyle(Color.secondary)
                        .padding(.leading, 40)
                        .padding(.top, 16)
                    
                    List(viewModel.bagListFix) { bag in
                        Text(bag.name)
                    }
                    .scrollContentBackground(.hidden)
                    .listStyle(PlainListStyle())
                    .frame(maxHeight: .infinity)
                }
            }
            
            // Seção de "Listas de Compras"
            if !viewModel.bagListAll.isEmpty {
                VStack(alignment: .leading, spacing: 5) {
                    Text("Listas de Compras")
                        .font(.system(size: 13, weight: .bold))
                        .foregroundStyle(Color.secondary)
                        .padding(.leading, 40)
                        .padding(.top, 5)
                    
                    List(viewModel.bagListAll, id: \.self) { bag in
                        Text(bag.name)
                    }
                    .scrollContentBackground(.hidden)
                    .listStyle(PlainListStyle())
                    .frame(maxHeight: .infinity)
                }
            }
            
            Spacer()
        }
        .sheet(isPresented: $isPresentingAddBag) {
            AddBagSheet(bags: $bags)
        }
    }
}

#Preview {
    BagListView()
}
