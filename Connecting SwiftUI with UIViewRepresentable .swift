struct toogle1:View{
    @State private var dhezu=false
    
    
    var body: some View{
        
        
       
        VStack{
            
            List{
         
                
                Toggle("Switch to Load",isOn:$dhezu)
                    .toggleStyle(SwitchToggleStyle(tint: .green))
               ActivityIndicator()
                
                .disabled(dhezu)
        
        }
        
        
            .listStyle(GroupedListStyle())
        
        
        }
    }
        
    
}



struct ActivityIndicator: UIViewRepresentable {
    typealias Context = UIViewRepresentableContext<Self>
    typealias UIViewType = UIActivityIndicatorView

    public func makeUIView(context: Context) -> UIViewType {
        UIActivityIndicatorView(style: .medium)
    }

    public func updateUIView(_ uiView: UIViewType, context: Context) {
        if context.environment.isEnabled && uiView.isAnimating {
            uiView.stopAnimating()
        }
        if !context.environment.isEnabled &&  !uiView.isAnimating {
            uiView.startAnimating()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
       toogle1()
      
      
    }
}
