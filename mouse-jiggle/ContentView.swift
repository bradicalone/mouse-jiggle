//
//  ContentView.swift
//  mouse-jiggle
//
//  Created by brad vanderbush on 5/9/25.
//

import SwiftUI
import Cocoa
import CoreGraphics




struct ContentView: View {
    func moveMouseTo(x: CGFloat, y: CGFloat) {
        CGWarpMouseCursorPosition(CGPoint(x: x, y: y))
    }
    var body: some View {
        VStack {
            VStack {
                Image("joystick")
                    .resizable()
                    .cornerRadius(5)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100.0, height: 32.0)
                    
                    
                Text("Some Text")
                    .foregroundColor(Color.white)
            }
            .padding()
            .background(Color.black)
        }
        .frame(width: 600, height: 320)
        .fixedSize()
        .onAppear {
            NSEvent.addLocalMonitorForEvents(matching: .mouseMoved) { event in
                    guard let pointOnScreen = event.window?.convertPoint(toScreen: event.locationInWindow) else {
                        return event
                    }
                    let cgPoint = CGPoint(x: pointOnScreen.x,y: pointOnScreen.y)
                    let _ = print(cgPoint)
//                    CGWarpMouseCursorPosition(cgPoint)
                    return event
                }
//            moveMouseTo(x: 200, y: 300)
        }
    }
}

#Preview {
    ContentView()
}


