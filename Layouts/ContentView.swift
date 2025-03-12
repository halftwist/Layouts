//
//  ContentView.swift
//  Layouts
//
//  Created by John Kearon on 3/12/25.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = ""
    
    var body: some View {
        VStack {
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundStyle(.red)
                .frame(height: 150)
                .frame(maxWidth: .infinity)
                .border(Color.gray)
                .padding()

            HStack {
                Button("Awesome") {
                    messageString = "You Are Awesome!"
                }
                Button("Great") {
                    messageString = "You Are Great!"
                }
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            .padding()
//            .border(Color.gray)
        }
        .padding()
//        .border(Color.gray)
    }
}

#Preview {
    ContentView()
}
