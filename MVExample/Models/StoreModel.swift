//
//  StoreModel.swift
//  MVExample
//
//  Created by Luciano dii Souza on 30/06/25.
//

import Foundation

@MainActor
class StoreModel: ObservableObject {
    let webservice: Webservice
    
    @Published var products: [Product] = []
    
    init(webservice: Webservice) {
        self.webservice = webservice
    }
    
    func populateProducts()  async throws {
        products = try await webservice.getProducts()
    }
}
