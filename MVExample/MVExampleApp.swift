//
//  MVExampleApp.swift
//  MVExample
//
//  Created by Luciano dii Souza on 30/06/25.
//

import SwiftUI

@main
struct MVExampleApp: App {
    @StateObject private var storeModel: StoreModel = StoreModel(webservice: Webservice())
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(storeModel)
        }
    }
}
