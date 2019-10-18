//
//  MovieDetail.swift
//  Ebook
//
//  Created by Kumo on 2019/10/16.
//  Copyright © 2019 Kumo. All rights reserved.
//

import SwiftUI

struct MovieDetail: View {
    var movie: Movie
    var body: some View {
        ScrollView(.vertical){
            VStack {
                MovieDetailImage(movie: movie)
                Text(movie.info)
                    .font(Font.custom("Chalkboard SE", size: 17))
                    .multilineTextAlignment(.center)
                    .padding()
                Spacer()
            }
            .navigationBarTitle(movie.name)
        }
    }
}

struct MovieDetail_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetail(movie: movies[0])
    }
}

struct MovieDetailImage: View {
    var movie: Movie
    var body: some View {
        Image(movie.name)
            .resizable()
            .scaledToFill()
            .frame(height: 500)
            .clipped()
    }
}
