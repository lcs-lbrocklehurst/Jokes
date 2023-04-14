//
//  JokesView.swift
//  Jokes
//
//  Created by Lewis Brocklehurst on 2023-04-14.
//

import SwiftUI

struct JokesView: View {
    
    //MARK: stored properties
    
    //0.0 is invisible, 1.0 is visible
    @State var punchlineOpacity = 0.0
    
    //the current joke to display
    @State var currentJoke = exampleJoke
    
    //MARK: computed properties
    var body: some View {
        
        NavigationView {
            VStack {

                Text(currentJoke.setup)
                    .font(.title)
                    .multilineTextAlignment(.center)
                
                Button( action: {
                    withAnimation(.easeIn(duration: 1.0)) {
                        punchlineOpacity = 1.0
                    }
                }, label: {
                    Image (systemName: "arrow.down.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40)
                        .tint(.black)
                })
                
           
                Text(currentJoke.punchline)
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

