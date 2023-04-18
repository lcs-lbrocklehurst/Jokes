//
//  JokesApp.swift
//  Jokes
//
//  Created by Lewis Brocklehurst on 2023-04-14.
//

import SwiftUI

@main
struct JokesApp: App {
    var body: some Scene {
        WindowGroup {
            JokesView()
            //make the database available to all child views through the environment
                .environment(\.blackbirdDatabase, AppDatabase.instance)
        }
    }
}
