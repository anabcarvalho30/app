import SwiftUI
import SwiftData

struct ContentView: View {
    
    //Quando você quer alterar algo dentro da View, você usa o @State.
    
    @State var title = ""
    
    @Environment(\.modelContext) var modelContext

    @State var color = Color.black
    
    var body: some View {
        ColorPicker("Color", selection: $color)
            .onChange(of: color) {
                // Salvar no Banco de Dados
                let resolved = color.resolve(in: EnvironmentValues())
                // Carregar do Banco de Dados
                let color = Color(resolved)
                
                let compra = Compras(name: "", date: .now, color: resolved)
            }
    }
}
