import SwiftUI

struct ListatUI: View {
    
    @State private var shfaq=false
    @State private var showGreeting = true
    
    
    
    var body: some View {
        
        NavigationView{
            
            
            
          
  
            
          
          
            List{
                
                VStack{
                    
                    
                    Image(systemName: "person.circle")
                        .font(.system(size: 100))
                        .padding(.leading,110)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    
                    Text("Info")
                        .font(.system(size: 40))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .padding(.leading,110)
                }
                
                Section(header: Text("Important tasks")) {
            NavigationLink(
                destination: /*@START_MENU_TOKEN@*/Text("Destination")/*@END_MENU_TOKEN@*/,
                label: {
              
                Text("Për me shume")
                })
                
                    NavigationLink(
                        destination: /*@START_MENU_TOKEN@*/Text("Destination")/*@END_MENU_TOKEN@*/,
                        
                        label: {
                            
                        
                Text("Krijo LLogari")
                            
                        })
                
                    NavigationLink(
                        destination: /*@START_MENU_TOKEN@*/Text("Destination")/*@END_MENU_TOKEN@*/,
                        label: {
                            Text("Bashkepunimet")
                            
                            
                            
                            
                            
                        })
              
                    
                        
                        
                        
                        
                    
                
                
                }
             
                NavigationLink(
                    destination: /*@START_MENU_TOKEN@*/Text("Destination")/*@END_MENU_TOKEN@*/,
                    label: {
                        
                    
                Text("Internet URL")
                    })
                
                NavigationLink(
                    destination: /*@START_MENU_TOKEN@*/Text("Destination")/*@END_MENU_TOKEN@*/,
                    label: {
                        
                    
                Text("Versioni 2.0")
                    })
                
                
                Toggle("Notifications", isOn: $showGreeting)
                                .toggleStyle(SwitchToggleStyle(tint: .green))

                            if showGreeting {
                               
                            }
               
                
                VStack{
                    
                    
                   
                    Button("Shfaq URL"){
                        
                        shfaq.toggle()
                        
                        
                    }
                  
                    if shfaq{
                        
                        
                        Text("http://www.KuzhinaDizajn.com")
                            .font(.footnote)
                    }
                    
                }
            
        }
            
         
            
            
            .listStyle(GroupedListStyle())
            .navigationTitle(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=Title@*/Text("Title")/*@END_MENU_TOKEN@*/)
            .navigationBarHidden(true)
            
         

    }
}

    
}
struct ListatUI_Previews: PreviewProvider {
    static var previews: some View {
        ListatUI()
    }
}
