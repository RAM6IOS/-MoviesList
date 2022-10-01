//
//  MoviesViewModel.swif.swift
//  MoviesList
//
//  Created by Bouchedoub Rmazi on 30/9/2022.
//

import Foundation
class MovieViewModel: ObservableObject {
    @Published var movies : [movie]?
    func fetchData() {
        let url = URL(string: "https://api.themoviedb.org/3/discover/movie?sort_by=popularity.desc&api_key=e6dc8c20ea0d4c49874b8fa5173a1309")
        URLSession.shared.dataTask(with: url!) { data, response, error in
            if let error = error {
                print(error)
                return
            }
            if let data = data {
                do {
                    let record = try JSONDecoder().decode(Record.self, from: data)
                    
                    self.movies = record.results
    
                } catch (let error) {
                    print(error)
                    return
                }
            } else {
                print("error")
                return
            }
        }.resume()
    }
}
