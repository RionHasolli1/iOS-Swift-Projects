//
//  ToDoModel.swift
//  ToDoListApp
//
//  Created by Rion Hasolli on 02/01/2022.
//

import Foundation


struct Model:Identifiable{
    
    let id:String
    let title:String
    let isCompleted:Bool
    
    init(id:String = UUID().uuidString,title:String,isCompleted:Bool){
        
        
        self.id=id
        self.title=title
        self.isCompleted=isCompleted
        
    }
    
    func onCompletedToggle() -> Model {
        
        return Model(id:id,title: title, isCompleted: !isCompleted)
        
        
    }
    
}
