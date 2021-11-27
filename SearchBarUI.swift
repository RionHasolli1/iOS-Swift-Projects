

struct SearchField: UIViewRepresentable {
    @Binding var text: String

    private var placeholder = ""

    init(text: Binding<String>) {
        _text = text
    }

    class Cordinator : NSObject, UISearchBarDelegate {

        @Binding var text : String

        init(text : Binding<String>) {
            _text = text
        }

        func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
            text = searchText
        }
    }


    func makeCoordinator() -> SearchField.Cordinator {
        return Cordinator(text: $text)
    }

    func makeUIView(context: Context) -> UISearchBar {
        let searchBar = UISearchBar()
        searchBar.delegate = context.coordinator    
       searchBar.placeholder = placeholder
        return searchBar
    }


    func updateUIView(_ uiView: UISearchBar, context: Context) {
        uiView.text = text
        uiView.placeholder = placeholder
    }
}


extension SearchField {

    func placeholder(_ string: String) -> SearchField {
        var view = self
        view.placeholder = string
        return view
    }
}






struct SearchBarUI: View {
 
    @State private var text = ""
       @State private var placeHolder = "Kerko Shtetin Ballkanik"

       let fruitList = ["Kosovë", "Shqiperi", "Mali i zi", "Maqedoni", "Greqi"]

       var body: some View {

           VStack {
               NavigationView{
                   List {
                       SearchField(text: $text)
                           .placeholder(placeHolder)

                       ForEach( self.fruitList.filter {
                                   self.text.isEmpty ?
                                   true :
                                   $0.localizedStandardContains(self.text)},
                                id: \.self)
                       { fruitName in
                           Text(fruitName)
                            .fontWeight(.semibold)
                       }
                   }
                   .navigationBarTitle(Text("Search bar"))
               }

             
       }
   }
}

struct SearchBarUI_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarUI()
    }
}
