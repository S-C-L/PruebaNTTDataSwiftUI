
import SwiftUI


struct ContentView: View {
//    @StateObject var network = Network()
//    @EnvironmentObject var network : Network
    @State var productos = [Producto] ()
    @State var productoSelected : Producto?

    var body: some View {
        NavigationStack{
            List(productos, id: \.id) { producto in
                VStack{
                    Text("\(producto.title)")
                        .font(.title2)
                    Text("\(producto.category)")
                        .font(.body)
                }
                .onTapGesture {
                    productoSelected = producto
                }
                
            }
            .sheet(item: $productoSelected) { producto in
                DetalleView(producto: producto)
            }
                .padding()
                .onAppear(){
                    Network().Get(result: {productosGet, error in
                        self.productos = productosGet!
                        //                    print(productosGet)
                    })
                }.navigationTitle("Productos")
            }
        }
    }

  

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

