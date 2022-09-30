//
//  ContentView.swift
//  MoviesList
//
//  Created by Bouchedoub Rmazi on 30/9/2022.
//
import SwiftUI
import Kingfisher

struct ContentView: View {
    @StateObject var viewmodel =  MovieViewModel()
    var body: some View {
        NavigationView{
            ZStack{
                Color.theme
                    .edgesIgnoringSafeArea(.all)
                if let movies = viewmodel.movies{
                    List{
                        ForEach(movies){  movie in
                            NavigationLink(destination: MoviesDitels(movies: movie)) {
                                HStack( spacing: 15){
                                KFImage(URL(string: "https://image.tmdb.org/t/p/w500/\( movie.poster_path)")!)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 140, height: 200)
                                    .cornerRadius(5)
                                    VStack(alignment:.leading , spacing: 8){
                                Text(movie.title)
                                    .fontWeight(.bold)
                                Text(movie.release_date)
                                        .fontWeight(.bold)
                                Text(movie.original_language)
                                            .fontWeight(.bold)
                                        HStack{
                                            Image(systemName: "star.fill")
                                                .resizable()
                                                .frame(width: 20, height: 20)
                                                .foregroundColor(.orange)
                                            Text(String(format: "%1.f" , movie.vote_average))
                                                .fontWeight(.bold)
                                        }
                                        Spacer()
                                    }
                                }
                                }
                        }
                        .foregroundColor(.white)
                        .listRowBackground(Color.theme)
                    }
                    .listStyle(.plain)
                } else{
                    Text("Fetch Data...")
                }
        }
            .onAppear{
                viewmodel.fetchData()
            }
            .navigationBarTitle("Movie List")
            .navigationBarTitleTextColor(Color.white)
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
