//
//  Item.swift
//  10000 hours
//
//  Created by Abdul-Qayyum Olatunji on 2026-02-06.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
