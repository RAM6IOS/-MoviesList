//
//  MoviesDitels.swift
//  MoviesList
//
//  Created by Bouchedoub Rmazi on 30/9/2022.
//

import SwiftUI
import Kingfisher

struct MoviesDetails: View {
    let movies: movie
    var body: some View {
        ZStack(alignment: .bottom){
                Color.theme
                  .edgesIgnoringSafeArea(.all)
            ScrollView{
        VStack{
            VStack{
            KFImage(URL(string: "https://image.tmdb.org/t/p/w500/\(movies.poster_path)")!)
                .resizable()
                .scaleEffect()
                .frame(width: .infinity  , height: 450)
            }
            VStack(alignment: .leading){
            Text(movies.title)
                    .font(.title.bold())
                    .padding(.bottom, 5)
            Text("Release Date : \(movies.release_date)")
                .font(.title2)
                .padding(.bottom, 5)
                
                Text("Language : \(movies.original_language)")
                        .font(.title2)
                        .padding(.bottom, 5)
                HStack{
                Text("Popularity:")
                        .font(.title2)
                Text(String(format: "%1.f" ,movies.popularity))
                        .fontWeight(.bold)
                }
                HStack{
                    Text("Rating:")
                    Image(systemName: "star.fill")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.orange)
                    Text(String(format: "%1.f" , movies.vote_average))
                        .fontWeight(.bold)
                }
                .font(.title2)
                .padding(.bottom, 5)
                VStack(alignment: .leading){
                    Text("Overview:")
                        .font(.title3)
                        .fontWeight(.bold)
                    Text(movies.overview)
                        .font(.title2)
                }
            }
            .padding()
        }
        .foregroundColor(.white)
            }
        }
    }
}
