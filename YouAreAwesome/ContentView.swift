//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by csapp sicp on 2023/4/5.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = ""
    @State private var imageName = ""
    
    var body: some View {
        VStack {
            
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .cornerRadius(30)
                .shadow(radius: 30)
                .padding()
            
            Spacer()
            
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundColor(.red)
                .frame(height: 150)
                .frame(maxWidth: .infinity)
                .padding()
            
            Spacer()
            
            
            Button("Show Message") {
                let message1 = "You Are Awesome!"
                let message2 = "You Are Great"
                let imgs = ["image0", "image1"]
                //  This is the action performed when the button is pressed
//                if messageString == message1 {
//                    messageString = message2
//                } else {
//                    messageString = message1
//                }
                messageString = (messageString == message1 ? message2 : message1)
                imageName = (imageName == imgs[0] ? imgs[1] : imgs[0])
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
