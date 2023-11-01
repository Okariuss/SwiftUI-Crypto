//
//  HapticManager.swift
//  SwiftUI-Crypto
//
//  Created by Okan Orkun on 1.11.2023.
//

import Foundation
import SwiftUI

class HapticManager {
    
    static private let generator = UINotificationFeedbackGenerator()
    
    static func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        generator.notificationOccurred(type)
    }
}
