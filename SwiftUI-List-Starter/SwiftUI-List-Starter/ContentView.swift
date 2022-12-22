//
//  ContentView.swift
//  SwiftUI-List-Starter
//
//  Created by Sean Allen on 4/23/21.
//

import SwiftUI

struct ContentView: View {
    
    var videos: [Video] = VideoList.topTen
    
    var body: some View {
        NavigationView {
            
            List(videos, id: \.id) { video in
                
                
                NavigationLink(destination: VideoDetailsView(video: video),
                               label: {
                    
                    HStack {
                        Image(video.imageName)
                            .resizable()
                            .scaledToFit()
                            .frame( height: 70)
                            .cornerRadius(4)
                            .padding(.vertical, 4)
                        
                        VStack(alignment: .leading, spacing: 5) {
                            Text(video.title)
                                .fontWeight(.semibold)
                                .lineLimit(2)
                                .minimumScaleFactor(0.5)
                            
                            Text(video.uploadDate)
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        } // vstack
                    } // hstack

                    
                    })
                
            } // list
            .navigationTitle("Great's Top 10")

        } // vav
    } // body view
} // content view

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
