//
//  UIApplication.swift
//  SwiftUI-Crypto
//
//  Created by Okan Orkun on 29.10.2023.
//

import Foundation
import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
