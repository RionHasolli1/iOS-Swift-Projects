//
//  ToDoListView.swift
//  ToDoListApp
//
//  Created by Rion Hasolli on 02/01/2022.
//

import SwiftUI

struct ToDoListView: View {
 
    @StateObject var  todoVm = TodoListViewModel()
  
    var body: some View {
        List{
           
            
            ForEach(todoVm.todolist){ item in
                
                TodoListRowView(todo: item,onCompletetggle: {
                    
                    todoVm.UpdateItem(item: item.onCompletedToggle())
                    
                    
                }
                               
                  
                  )
            }
         
            .onDelete(perform: todoVm.Delete)
         
            .onMove(perform: todoVm.Move)
            
          
        }
        
        
     
       
     
        .navigationTitle("Todo List")
        .navigationBarItems(leading: EditButton(), trailing: NavigationLink(destination:{
            
            AddItemView { todo in
                todoVm.onSave(item: todo)
            }
            
        },label:{
            
            Text("Shto Listen")
            
            
        }))
    
}


}
struct ToDoListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
        ToDoListView()
    }
    }
}
