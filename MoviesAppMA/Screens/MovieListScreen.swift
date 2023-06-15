//
//  MovieListScreen.swift
//  MoviesAppMA
//
//  Created by Mitch Andrade on 6/15/23.
//

import SwiftUI
import SwiftData

struct MovieListScreen: View {
    
    @Query(sort: \.title, order: .forward) private var movies: [Movie]
    @State private var isAddMoviePresented: Bool = false
    
    var body: some View {
        List(movies) { movie in
            Text(movie.title)
        }
        .listStyle(.plain)
        .toolbar(content: {
            ToolbarItem(placement: .topBarTrailing) {
                Button("Add Movie") {
                    isAddMoviePresented = true
                }
            }
        })
        .sheet(isPresented: $isAddMoviePresented, content: {
            NavigationStack {
                AddMovieScreen()
            }
        })
    }
}

#Preview {
    NavigationStack {
        MovieListScreen()
            .modelContainer(for: [Movie.self])
    }
}
