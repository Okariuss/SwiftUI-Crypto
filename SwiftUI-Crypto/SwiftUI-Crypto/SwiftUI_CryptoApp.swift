//
//  SwiftUI_CryptoApp.swift
//  SwiftUI-Crypto
//
//  Created by Okan Orkun on 28.10.2023.
//

import SwiftUI

@main
struct SwiftUI_CryptoApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .toolbar(.hidden)
            }
        }
    }
}
