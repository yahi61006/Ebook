//
//  MovieRow.swift
//  Ebook
//
//  Created by Kumo on 2019/10/16.
//  Copyright © 2019 Kumo. All rights reserved.
//

import SwiftUI

struct MovieRow: View {
    var movie: Movie
    var body: some View {
        HStack {
            MovieRowImage(movie: movie)
            VStack(alignment: .leading){
                Text(movie.name)
                    .foregroundColor(Color.black)
                    .font(Font.system(size:30))
                    .fontWeight(.semibold)
                    .offset(x: 20)
                Text(movie.personalRating)
                    .foregroundColor(Color.black)
                    .fontWeight(.semibold)
                    .offset(x: 20)
            }
            Spacer()
        }
        .background(Color.yellow)
    }
}

struct MovieRow_Previews: PreviewProvider {
    static var previews: some View {
        MovieRow(movie: movies[0])
    }
}

struct MovieRowImage: View {
    var movie: Movie
    var body: some View {
        Image(movie.name)
            .renderingMode(.original)
            .resizable()
            .scaledToFill()
            .frame(width: 120, height: 120)
            .clipped()
    }
}
