//
//  FavouriteView.swift
//  Jokes
//
//  Created by Lewis Brocklehurst on 2023-04-18.
//

import Blackbird
import SwiftUI

struct FavouriteView: View {
    
    //MARK: stored properties
    
    //the list of favourite jokes
    @BlackbirdLiveModels({ db in
        try await Joke.read(from: db)
    }) var favouriteJokes
    
    //MARK: computed properties
    
    var body: some View {
        List(favouriteJokes.results) { currentJoke in
            VStack(alignment: .leading) {
                Text(currentJoke.setup)
                    .bold()
                Text(currentJoke.punchline)
            }
        }
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}


struct FavouriteView_Previews: PreviewProvider {
    static var previews: some View {
        FavouriteView()
    //make the database available to this view in Xcode Previews
            .environment(\.blackbirdDatabase,AppDatabase.instance )
    }
}
