//
//  AddItemView.swift
//  ToDoListApp
//
//  Created by Rion Hasolli on 02/01/2022.
//

import SwiftUI

struct AddItemView: View {
    
    let onSave:(_ todo : Model)->Void
    let id:String = UUID().uuidString
    @StateObject var addtodoVM = AddTodoViewModel()
    
    
    var body: some View {
        VStack{
        ScrollView{
            
            TextField("Todo Item:",text:$addtodoVM.title)
                .padding()
                .background(Color.init(red: 0.96, green: 0.87, blue: 0.96))
                .cornerRadius(15)
            
            
        }
        
            Button{
                
                if addtodoVM.onSave(){
                    
                    
                    let todo: Model = addtodoVM.getTodo(id: id)
                    onSave(todo)
                }
                
            } label:{
                
                Text("Save")
                    .frame(height:56)
                    .frame(maxWidth:.infinity)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(15)
                
                
            }.padding()
        
        
        .navigationTitle("Add Todos")
        }
    }
}

struct AddItemView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            AddItemView { todo in
                
            }
        }
    }
}
