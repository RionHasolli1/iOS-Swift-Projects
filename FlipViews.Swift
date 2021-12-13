struct Cardflipped: View {
    @State private var rotation = 0.0
   
    var body: some View {
        
        ZStack{
        
            Color.yellow
                .edgesIgnoringSafeArea(.all)
           
            VStack{
                
             Text("Hello SwiftUI")
                    .foregroundColor(.white)
                 
                    
                
            }
        .frame(width:250,height:250)
        .background(Color.blue)
        .cornerRadius(20.0)
        }
        
       
    
    }
}


  
    struct elsefliped:View{
        
        
        var body: some View{
            
            
            ZStack{
                Color.gray
                    .edgesIgnoringSafeArea(.all)
                
            
            VStack{
                
                Text("Click to Rotate")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
            }
        .frame(width:250,height:250)
        .background(Color.red)
        .cornerRadius(20.0)
        }
        
        }
            
        }
    




struct iffliped2:View{
    
    @State private var degrees:Double = 0.0
    @State private var rotacion = false
    
    var body: some View{
        
        VStack{
            
        
           
              
                
                if rotacion  {
                    
                    
              Cardflipped()
                
                }
                
            
                
                
              
                else  {
             
                  elsefliped()
                        
                      
                            }
                         
                            
                }
       
            
     
             
   
        .rotation3DEffect(
            .degrees(degrees),
            axis: (x: 0.0, y: 1.0, z: 0.0)
                
        )

        
        .onTapGesture {
            withAnimation {
               degrees+=360
                rotacion.toggle()
              
            }
     
    }

}
    
}
 
struct Cardflipped_Previews: PreviewProvider {
    static var previews: some View {
       iffliped2()
       
    }
}
