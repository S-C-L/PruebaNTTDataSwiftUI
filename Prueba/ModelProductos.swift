

import Foundation

struct Modelproducto: Codable{
    
    var products: [Producto]
    
    init() {
        self.products = []
    }
}

struct Producto: Codable, Identifiable{
    var uid : UUID? = UUID()
    var id: Int
    var title: String
    var description: String
    var price: Int
    var discountPercentage: Double
    var rating: Double
    var stock: Int
    var brand: String
    var category: String
    var thumbnail: String
}
