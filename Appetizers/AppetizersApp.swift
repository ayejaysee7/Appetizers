//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Andrew Chong on 3/10/25.
//

import SwiftUI

@main
struct AppetizersApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(order)
        }
    }
}
