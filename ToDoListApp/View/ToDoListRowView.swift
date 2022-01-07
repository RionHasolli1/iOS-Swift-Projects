//
//  ToDoListRowView.swift
//  ToDoListApp
//
//  Created by Rion Hasolli on 02/01/2022.
//

import SwiftUI

struct TodoListRowView: View {
  
        let todo: Model
        let onCompletetggle : () -> Void
        
        var body: some View {
            
            HStack{
                
                Button( action:onCompletetggle
                
                    
                    
                ,label:{
                    
                    Image(systemName: todo.isCompleted ? "checkmark.circle" : "circle")
                        .foregroundColor(todo.isCompleted ? .green : .blue)
                    
                })
                Text(todo.title)
                    .strikethrough(todo.isCompleted )
                Spacer()
            }
        }
    }

    


struct ToDoListRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            TodoListRowView(todo: Model( title: "Test Item", isCompleted: true),onCompletetggle: {})
            .previewLayout(.sizeThatFits)
            
            TodoListRowView(todo: Model( title: "Test Item", isCompleted: false),onCompletetggle: {})
                .previewLayout(.sizeThatFits)
            
            TodoListRowView(todo: Model( title: "Test Item", isCompleted: false),onCompletetggle: {})
                .previewLayout(.sizeThatFits)
            
        }
    }
}
