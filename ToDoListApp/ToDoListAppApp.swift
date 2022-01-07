//
//  ToDoListAppApp.swift
//  ToDoListApp
//
//  Created by Rion Hasolli on 02/01/2022.
//

import SwiftUI

@main
struct ToDoListAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            NavigationView{
            ToDoListView()
        }
        }
    }
}
