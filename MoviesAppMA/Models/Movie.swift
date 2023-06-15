//
//  Movie.swift
//  MoviesAppMA
//
//  Created by Mitch Andrade on 6/15/23.
//

import Foundation
import SwiftData

@Model
final class Movie {
    
    var title: String
    var year: Int
    
    @Relationship(.cascade, inverse: \Review.movie) var reviews: [Review]? = []
    
    init(title: String, year: Int) {
        self.title = title
        self.year = year
    }
}
