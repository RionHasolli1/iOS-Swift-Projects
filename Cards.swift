
//funskion per me kriju Kartat
//function for creating a card
struct Karta:View{
    
    var fotografia:String
    var Titulli:String
    var rruga:String
    
    
    var body:some View{
    
    
    //i rendit ne menyren Stack Vertikale kartat
    // Cards are ordered in Vertical Stack
    
        VStack{
            
            Image(fotografia)
                .resizable()
                .frame(width:370,height: 200)
            
            HStack{
            
            VStack(alignment:.leading){
                
                
                Text(Titulli)
                .font(.title2)
                    .foregroundColor(.black)
                    .padding(.leading,80)
                Text(rruga)
                    .font(.headline)
                    .foregroundColor(.secondary)
                    .lineLimit(3)
                    .padding(.leading,80)
                
              
             //ketu renditen ikonat ne menyren horizontale permes stackut
             //the icons are ordered in horizontal way
                
                HStack{
                    Label("049002310 ",systemImage:"phone.fill"
                    
                )
                    .padding(.leading,20)
                    .padding(.top,5)
                    .foregroundColor(.gray)
                }
                
                Label("5 yje",systemImage:"star.fill")
                    .padding(.leading,200)
                    .padding(.top,-28)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            
            
                
            
            
                
                
            }
               
            .layoutPriority(100)
            
         Spacer()
           
        }
        
            
        .padding()
        
    }
    
        .overlay(
                   RoundedRectangle(cornerRadius: 10)
                       .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.7), lineWidth: 1)
    )
        .padding([.top, .horizontal])
        
        .frame(width:400,height: 450)
       
       }
    
    }
    
    
    struct AgjencioneUI_Previews: PreviewProvider {
    static var previews: some View {
    //ketu jepen instancat per fotografin,titullin dhe emrin e rruges
    // the declared variables will go here such as image,title and road name
    
    Karta(fotografia: "modern",Titulli: "Luga Agjencione", rruga: "Rruga istref maxhuni")
    }
}
