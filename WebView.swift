import SwiftUI
import WebKit


struct WebView1: View {
    
    @State private var showWeb=false
    var body: some View {
       
        Button{
            
            showWeb.toggle()
            
        } label:{
            
            Text("Kliko Buttonin per Navigim")
        }
        .sheet(isPresented: $showWeb ){
            
            
            Webview(url: URL(string: "https://www.facebook.com/")!)
            
        }
    }
}

struct Webview : UIViewRepresentable{
    
    
    var url:URL
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    
    func updateUIView(_ webView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        webView.load(request)
    }
    
    
    
    
}
struct WebView_Previews: PreviewProvider {
    static var previews: some View {
        WebView1()
    }
}
