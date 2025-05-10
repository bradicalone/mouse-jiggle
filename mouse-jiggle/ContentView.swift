//
//  ContentView.swift
//  mouse-jiggle
//
//  Created by brad vanderbush on 5/9/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("joystick")
                .resizable()
                .cornerRadius(5)
//                .scaledToFit()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100.0, height: 32.0)
                
                
            Text("Hello, world!")
                .foregroundColor(Color.white)
        }
        .padding()
        .background(Color.black)
        
    }
}

#Preview {
    ContentView()
}

