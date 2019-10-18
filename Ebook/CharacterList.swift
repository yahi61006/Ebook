//
//  CharacterList.swift
//  Ebook
//
//  Created by Kumo on 2019/10/19.
//  Copyright © 2019 Kumo. All rights reserved.
//

import SwiftUI

struct CharacterList: View {
    var body: some View {
        NavigationView{
            List{
                CharacterView()
            }
            .onAppear {
                UITableView.appearance().separatorColor = .clear
            }
            .navigationBarTitle("Character")
        }
    }
}

struct CharacterList_Previews: PreviewProvider {
    static var previews: some View {
        CharacterList()
    }
}

struct CharacterView: View {
    let photoWidth = (UIScreen.main.bounds.size.width - 10)/2
    var body: some View {
        ForEach(0..<characters.count){ (row) in
            ScrollView(.vertical){
                HStack(spacing:20){
                    ForEach(0..<characters[row].name.count) { (column) in
                        NavigationLink(destination: ActorDetail(actor: actors[(row*2)+column])) {
                            VStack {
                                Image(characters[row].name[column])
                                    .renderingMode(.original)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 150, height: self.photoWidth)
                                    .clipped()
                                    .clipShape(Circle())
                                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                                    .shadow(radius: 5)
                                Text(characters[row].name[column])
                                    .fontWeight(.semibold)
                            }
                        }
                    }
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
                }
            }
        }
        .padding()
    }
}
