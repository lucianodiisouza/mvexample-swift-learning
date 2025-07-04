//
//  ContentView.swift
//  MVExample
//
//  Created by Luciano dii Souza on 30/06/25.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var storeModel: StoreModel
    
    func populateProducts() async {
        do {
           try await storeModel.populateProducts()
            
        } catch {
            print(error)
        }
    }
    
    var body: some View {
        VStack {
            List(storeModel.products) { product in
                VStack {
                    Text(product.title)
                    Spacer()
                    Text(product.price as NSNumber, formatter: NumberFormatter.currency)
                }
            }
            .task {
                await populateProducts()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView().environmentObject(StoreModel(webservice: Webservice()))
}
