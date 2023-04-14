//
//  JokesView.swift
//  Jokes
//
//  Created by Lewis Brocklehurst on 2023-04-14.
//

import SwiftUI

struct JokesView: View {
    var body: some View {
        
        NavigationView {
            VStack {
                Text("You see, mountains aren't just funny.")
                    .font(.title)
                    .multilineTextAlignment(.center)
                
                Button( action: {
                    
                }, label: {
                    Image (systemName: "arrow.down.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40)
                        .tint(.black)
                })
                
            }
            .navigationTitle("Random Jokes")
        }
    }
}
    
    struct JokesView_Previews: PreviewProvider {
        static var previews: some View {
            JokesView()
        }
    }

