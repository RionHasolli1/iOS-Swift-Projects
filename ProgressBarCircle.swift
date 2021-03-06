//
//  CircleUI.swift
//  FitnessUI
//
//  Created by Rion Hasolli on 6.10.21.
//

import SwiftUI

struct CircleUI: View {
    @State var progress:Double=0.0

        
    

var body:some View{
    
    
    ZStack{
        
        
        VStack{
            
            ProgressBar(progress: self.$progress)
                .frame(width:150,height:150)
                .padding(.top,40)
            
          
        
            
                           Button(action: {
                               self.incrementRritje()
                           }) {
                               HStack {
                                   Image(systemName: "plus.rectangle.fill")
                                   Text("Rritje")
                               }
                               .padding(25.0)
                               .overlay(
                                   RoundedRectangle(cornerRadius: 15.0)
                                       .stroke(lineWidth: 2.0)
                               )
                               .padding(.top,50)
                           }
        
    }
    
    
    
        
        
        
        
    }
    
   
    
    
    

}
    
 
        
        
    func incrementRritje() {
            let NrRastesishem = Double([0.020, 0.045, 0.065, 0.075, 0.095].randomElement()!)
            self.progress += NrRastesishem
        }
    }
    
        

    


struct ProgressBar: View {
    @Binding var progress: Double
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 20.0)
                .opacity(0.3)
                .foregroundColor(Color.green)
            
            Circle()
                .trim(from: 0.0, to: CGFloat(min(self.progress, 1.0)))
                .stroke(style: StrokeStyle(lineWidth: 20.0, lineCap: .round, lineJoin: .round))
                .foregroundColor(Color.green)
                .rotationEffect(Angle(degrees: 270.0))
                .animation(.linear)

            Text(String(format: "%.0f %%", min(self.progress, 1.0)*100.0))
                .font(.largeTitle)
                .bold()
        }
    }
}

struct CircleUI_Previews: PreviewProvider {
    static var previews: some View {
        CircleUI(progress: 0.25)
    }
}
