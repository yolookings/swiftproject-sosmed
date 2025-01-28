//
//  Item.swift
//  simple-sosmed
//
//  Created by Maulana Ahmad Zahiri on 24/01/25.
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
