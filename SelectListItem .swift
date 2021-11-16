
struct SelectListItem:View{
    
    @State private var selection:String?
    
    
    let items=["Prishtinë","Prizren","Mitrovicë","Pejë","Gjilan","Gjakovë","Ferizaj"]
    
    var body: some View{
        
        NavigationView{
            
            
            
            List(items,id: \ .self,selection:$selection){
                item in
                
                
                Text(name)
                    .fontWeight(.semibold)
                    .frame(height:50)
                
            }
            .navigationTitle("selekto")
            
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                
                
                EditButton().foregroundColor(.white)
                
                    
            }
            
        }
        
        
      
        }
    
    
}
