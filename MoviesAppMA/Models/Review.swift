//
//  Review.swift
//  MoviesAppMA
//
//  Created by Mitch Andrade on 6/15/23.
//

import Foundation
import SwiftData

@Model
final class Review {
    var subject: String
    var body: String
    var movie: Movie?
    
    init(subject: String, body: String) {
        self.subject = subject
        self.body = body
    }
}
