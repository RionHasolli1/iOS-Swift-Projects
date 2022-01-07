//
//  TodoListModel.swift
//  ToDoListApp
//
//  Created by Rion Hasolli on 02/01/2022.
//

import Foundation

class TodoListViewModel:ObservableObject{
    
    @Published var todolist:[Model]=[]
    
        init(){
            
            todolist.append(contentsOf: [
            
                
                    Model( title: "Me kry Cacttusin", isCompleted: false),
                
                    Model( title: "Me hi npun", isCompleted: false)
            
            ])
            
        }
            func Move(indexset:IndexSet,to:Int){
                
                todolist.move(fromOffsets: indexset, toOffset: to)
                
            }
            
            func Delete(indexSet:IndexSet){
                
                
                todolist.remove(atOffsets: indexSet)
            }
          
    
            
    func UpdateItem(item:Model){
        
        
        if let index = todolist.firstIndex(where: {$0.id==item.id}){
            
            
            todolist[index] = item
            
        }
            
            
    }
            
        func onSave(item:Model){
            
            if let index = todolist.firstIndex(where: {$0.id == item.id}){
                
                
                
               todolist[index] = item
                return
            }
            
            todolist.append(item)
            
        }
    
        }
    

