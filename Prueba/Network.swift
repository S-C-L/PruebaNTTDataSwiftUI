
import Foundation

class Network : ObservableObject{
    @Published var productos = [Producto]()
    
    func Get(result: @escaping([Producto]?,Error?)->Void){
        
        let url = URL(string: "https://dummyjson.com/products")!
        let decoder = JSONDecoder()
        URLSession.shared.dataTask(with: url){
            data, response, error in
            if let dataSource = data{
                let root = try! decoder.decode(Modelproducto.self, from: dataSource)
                self.productos = root.products
                result(self.productos,nil)
//                print(self.productos)
            }
            if let ex = error{
                result(nil,ex)
            }
        }.resume()
    }
}

