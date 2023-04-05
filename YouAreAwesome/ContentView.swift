//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by csapp sicp on 2023/4/5.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = ""
    
    var body: some View {
        VStack {
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.red)
                .padding()
            
            HStack {
                Button("Awesome") {
                    //  This is the action performed when the button is pressed
                    messageString = "You Are Awesome!"
                }
                .buttonStyle(.borderedProminent)
                
                Button("Great") {
                    //  This is the action performed when the button is pressed
                    messageString = "You Are Great!"
                }
                .buttonStyle(.borderedProminent)
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
