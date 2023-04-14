//
//  JokesView.swift
//  Jokes
//
//  Created by Lewis Brocklehurst on 2023-04-14.
//

import SwiftUI

struct JokesView: View {
    
    //MARK: stored properties
    @State var punchlineOpacity = 0.0
    
    //MARK: computed properties
    var body: some View {
        
        NavigationView {
            VStack {
                Text("You see, mountains aren't just funny.")
                    .font(.title)
                    .multilineTextAlignment(.center)
                
                Button( action: {
                    punchlineOpacity = 1.0
                }, label: {
                    Image (systemName: "arrow.down.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40)
                        .tint(.black)
                })
                
                Text("they are hill areas")
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .opacity(punchlineOpacity)
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
