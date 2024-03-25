//
//  ToDolistApp.swift
//  ToDolist
//
//  Created by Sharma, Shubham on 25/03/24.
//

import FirebaseCore
import SwiftUI

@main
struct ToDolistApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
