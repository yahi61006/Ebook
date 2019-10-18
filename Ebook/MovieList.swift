//
//  MovieList.swift
//  Ebook
//
//  Created by Kumo on 2019/10/17.
//  Copyright © 2019 Kumo. All rights reserved.
//

import SwiftUI

struct MovieList: View {
    var body: some View {
        NavigationView{
            List{
                FirstSection()
                SecondSection()
            }
            .navigationBarTitle("Marvel & DC Movies ")
        }
    }
}

struct MovieList_Previews: PreviewProvider {
    static var previews: some View {
        MovieList()
    }
}

struct FirstSection: View {
    var body: some View {
        Section(header: Text("Top Movies").fontWeight(.bold)) {
            ScrollView(.horizontal){
                HStack(spacing: 10){
                    ForEach(0..<movies.count){ (index) in
                        NavigationLink(destination: MovieDetail(movie: movies[index])) {
                            Image(movies[index].name)
                                .renderingMode(.original)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 300,height: 400)
                                .cornerRadius(30)
                        }
                    }
                }
            }
        }
    }
}

struct SecondSection: View {
    var body: some View {
        Section(header: Text("Rating").fontWeight(.bold)) {
            ScrollView(.vertical){
                ForEach(0..<movies.count){ (index) in
                    NavigationLink(destination: MovieDetail(movie: movies[index])){
                        MovieRow(movie: movies[index])
                    }
                }
            }
        }
    }
}
