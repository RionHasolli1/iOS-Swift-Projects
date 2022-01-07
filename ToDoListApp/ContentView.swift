//
//  ContentView.swift
//  ToDoListApp
//
//  Created by Rion Hasolli on 02/01/2022.
//

import SwiftUI
import CoreData

struct ContentView: View {
   
    var body: some View{
        
        Text("ello")
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
