//
//  AddTodoViewModel.swift
//  ToDoListApp
//
//  Created by Rion Hasolli on 02/01/2022.
//

import Foundation

class AddTodoViewModel:ObservableObject {
    
    
    @Published var title: String = ""
    
    func onSave()->Bool{
        
        if title.isEmpty{
            
            
            return false
            
            
        } else if title.count < 5{
            
            
            return false
        }
        
        return true
    }
    
    func getTodo(id:String = UUID().uuidString)->Model{
        
        return Model(id: id, title: title, isCompleted: false)
        
    }
    
    
    
    
    
    
}


