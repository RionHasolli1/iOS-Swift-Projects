import UIKit
import SwiftUI




struct ImagePicker: UIViewControllerRepresentable {
    
    var sourceType: UIImagePickerController.SourceType = .photoLibrary
    
    @Binding var selectedImage: UIImage
    @Environment(\.presentationMode) private var presentationMode

    func makeUIViewController(context: UIViewControllerRepresentableContext<ImagePicker>) -> UIImagePickerController {
        
        let imagePicker = UIImagePickerController()
        imagePicker.allowsEditing = false
        imagePicker.sourceType = sourceType
        imagePicker.delegate = context.coordinator
        
        return imagePicker
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: UIViewControllerRepresentableContext<ImagePicker>) {
        
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    final class Coordinator: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
        
        var parent: ImagePicker
        
        init(_ parent: ImagePicker) {
            self.parent = parent
        }
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            
            if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
                parent.selectedImage = image
            }
            
            parent.presentationMode.wrappedValue.dismiss()
        }
    }
}



struct ContentView10: View{
    
    @State private var isShowPhotoLibrary = false
    @State private var image = UIImage()
  

    
    var body: some View{
        
        VStack{
            Image(uiImage: self.image)
                .resizable()
                .scaledToFit()
                
              
                              
            
            Button(action: {
                
                
                self.isShowPhotoLibrary = true
                
            }){
                HStack{
                    
                    Image(systemName: "house.fill")
                        .font(.system(size:20))
                    
                    
                    Text("Photo Library")
                        .font(.headline)
                }
                .frame(maxWidth: 350, minHeight: 50)
                .background(LinearGradient(gradient: Gradient(colors: [Color("DarkGreen"), Color("LightGreen")]), startPoint: .leading, endPoint: .trailing))
                               .foregroundColor(.white)
                               .cornerRadius(16)
                               .padding(.top,0)
                
            }
            
         
           
        }
        
        
       
        .sheet(isPresented: $isShowPhotoLibrary) {
                    ImagePicker(sourceType: .photoLibrary, selectedImage: self.$image)
                }
    }
}
    




struct ContentView10_Previews: PreviewProvider {
    static var previews: some View {
       
            ContentView10()
        }
    }
