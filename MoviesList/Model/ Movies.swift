//
//   Movies.swift
//  MoviesList
//
//  Created by Bouchedoub Rmazi on 30/9/2022.
//

import Foundation

struct Record: Decodable {
    let results: [movie]
}
struct movie:  Identifiable ,Decodable {
        let id: Int
        let overview: String
        let  title: String
        let poster_path :String
        let vote_average: Float
        let release_date : String
        let original_language: String
        let popularity: Float
 }
