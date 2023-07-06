

import SwiftUI

struct DetalleView: View {
//    @State var producto: Producto
    var producto : Producto
    
    var body: some View {
        
        ScrollView{
            VStack {
                Text("\(producto.id)\n").fixedSize(horizontal: false, vertical: true).padding()
                Text("\(producto.title)\n").fixedSize(horizontal: false, vertical: true).padding()
                Text("\(producto.description)\n").fixedSize(horizontal: false, vertical: true).padding()
                Text("\(producto.brand)\n").fixedSize(horizontal: false, vertical: true).padding()
                Text("\(producto.category)\n").fixedSize(horizontal: false, vertical: true).padding()
                Text("\(producto.price)\n").fixedSize(horizontal: false, vertical: true).padding()
                Text("\(producto.discountPercentage)\n").fixedSize(horizontal: false, vertical: true).padding()
                Text("\(producto.rating)\n").fixedSize(horizontal: false, vertical: true).padding()
                Text("\(producto.stock)\n").fixedSize(horizontal: false, vertical: true).padding()
        //        Text("\(producto.thumbnail)\n")
                AsyncImage(url: URL(string: producto.thumbnail)).frame(width: 10, height: 10).padding()
                    
            }
        }
       
   

    }
}

//struct DetalleView_Previews: PreviewProvider {
//    static var previews: some View {
//        DetalleView()
//    }
//}
