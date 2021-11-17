struct loop:View{
    
    
    @State var items :[String]=["Prishtine","Mitrovicë","Prizren"]
    
    
    var body: some View{
        
        NavigationView{
            
            
        List{
            
            Section(header:Text("Qytetet")){
            
            
            ForEach(items,id:\.self){ item in
                
            
                
                
                Text(item.capitalized)
                
                  
            }
            
         
            .onDelete(perform: delete)
            .onMove(perform:move)
        }
            
        }
        
        
        
        
        .navigationTitle("Qytetet")
        .navigationBarItems(leading: EditButton(),trailing:
        
     addbutton)
       
        }
        
    }
    
    var addbutton:some View{
        
        
        Button("Add", action: {
            
            
            
            add()
            
            
        
        })
        
        
    }
    
    func delete (indexset:IndexSet){
        
        items.remove(atOffsets: indexset)
        
        
        
    }
    
    func move (indices:IndexSet,newOffset:Int){
        
        
        items.move(fromOffsets: indices, toOffset: newOffset)
        
        
    }
    func add(){
        
        items.append("Peje")
        
        
    }
    
  
}
    





  

struct Cards_Previews: PreviewProvider {
    static var previews: some View {
     loop()
    }
}
