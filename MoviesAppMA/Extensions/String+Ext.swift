//
//  String+Ext.swift
//  MoviesAppMA
//
//  Created by Mitch Andrade on 6/15/23.
//

import Foundation

extension String {
    
    var isEmptyOrWhiteSpace: Bool {
        self.trimmingCharacters(in: .whitespaces).isEmpty
    }
}
