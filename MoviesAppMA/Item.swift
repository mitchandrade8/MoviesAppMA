//
//  Item.swift
//  MoviesAppMA
//
//  Created by Mitch Andrade on 6/14/23.
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
