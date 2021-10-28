
import SwiftUI

struct Login: View {
    
    @State var username=""
    @State var password=""
    var body: some View {
        ZStack{
            
            
          Image("3360_SL CR-1")
                .resizable()
         
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
           
            
            ZStack{
                
                Text("Kyçu")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top,-150)
                    
                
                TextField("Username",text:$username)
                  
                   
                    .frame(width:250,height:50)
                   
                    .background(Color.init( red: 0.92, green: 0.92, blue: 0.92, opacity: 1.0))
                    .cornerRadius(10.0)
                    .padding(.top,-60)
                    
                  
                TextField("Password:",text:$password)
             
                     .frame(width:250,height:50)
                    .background(Color.init( red: 0.92, green: 0.92, blue: 0.92, opacity: 1.0))
                    .cornerRadius(10.0)
                    .padding(.top,70)
                   
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Vazhdo")
                        .frame(width:200,height: 50)
                        .foregroundColor(.white)
                })
                .cornerRadius(20.0)
                .background(Color.red)
                .frame(width:300,height: 50)
                .padding(.top,230)
              
              
               
                  
                    
                
            }
            
            .frame(width:300,height: 350)
            .background(Color.white)
            .cornerRadius(20.0)
            .padding(.top,-30)
        }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
