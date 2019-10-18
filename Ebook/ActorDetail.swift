//
//  ActorDetail.swift
//  Ebook
//
//  Created by Kumo on 2019/10/18.
//  Copyright © 2019 Kumo. All rights reserved.
//

import SwiftUI

struct ActorDetail: View {
    var actor: Actor
    var body: some View {
        List{
            ScrollView(.vertical){
                VStack{
                    ActorImage(actor: actor)
                    Text(actor.info)
                        .font(Font.custom("Cochin Italic3.2", size: 20))
                        .multilineTextAlignment(.center)
                        .padding()
                }
                Section(header: Text("Other films").fontWeight(.bold)) {
                    ScrollView(.horizontal){
                        HStack(spacing: 10) {
                            ForEach(0..<self.actor.relate.count){ (index) in
                                Image(self.actor.relate[index])
                                    .resizable()
                                    .scaledToFill()
                                    .frame(height: 600)
                                    .clipped()
                            }
                        }
                    }
                }
                .navigationBarTitle(actor.name)
            }
        }
    }
}

struct ActorDetail_Previews: PreviewProvider {
    static var previews: some View {
        ActorDetail(actor: actors[0])
    }
}

struct ActorImage: View {
    var actor: Actor
    var body: some View {
        Image(actor.name)
            .resizable()
            .scaledToFit()
            .frame(height: 500)
            .clipped()
    }
}
