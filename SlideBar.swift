
struct ContentView:View{
  
  @State private var price:Double=0.0
  
  var body:Some View{
    
    
    NavigationView{
    
    
         Slider(value: $price,in:5000...400000)
                          
          Text("Çmimi:\(Int(price))€")
    
    
  }
    
  }
  .navigationTitle("SlideBar")
   .navigationBarTitleDisplayMode(.inline)

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      
      Contentview()
      
    }

}
