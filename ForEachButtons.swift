struct foreachbuttons:View{
    
    var infinit=100
 
    
    var body: some View{
        
        
        ScrollView{
        
        VStack(spacing:10){
            
            
            ForEach(0..<infinit) { numri in
                     
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    
                    Text(numri.description.capitalized)
                        .foregroundColor(.white)
                })
                .frame(width:200,height:50)
                .background(Color.blue)
                .cornerRadius(5.0)

                                  
        
            }
        
                
            }
             
        }
        }
        
        
 
    }
    struct foreach_Previews: PreviewProvider {
    static var previews: some View {
   
        foreachbuttons()
    }
}
