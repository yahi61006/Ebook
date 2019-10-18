//
//  AppView.swift
//  Ebook
//
//  Created by Kumo on 2019/10/17.
//  Copyright © 2019 Kumo. All rights reserved.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView {
            MovieList()
                .tabItem {
                  Image(systemName: "film")
                    Text("movies")
            }
            CharacterList()
                .tabItem {
                    Image(systemName: "person")
                    Text("character")
            }
        }
        .accentColor(.pink)
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
