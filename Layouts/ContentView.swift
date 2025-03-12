//
//  ContentView.swift
//  Layouts
//
//  Created by John Kearon on 3/12/25.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = "When the Genius Bar Needs Help, They Call You!"
    
    var body: some View {
        VStack {
//            Text("You Have Skills!")
//                .font(.largeTitle)
//                .fontWeight(.black)
//                .foregroundStyle(.goldBC)
//                .padding()
//                .background(Color("maroon-BC"))
//                .clipShape(RoundedRectangle(cornerRadius: 0))
            
            Spacer()
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundStyle(.red)
                .frame(height: 150)
                .frame(maxWidth: .infinity)
//                .border(Color.gray)
                .padding()

            Spacer()
            Spacer()
            Spacer()
            
            HStack {
                Button("Awesome") {
                    messageString = "You Are Awesome!"
                }
                Spacer()
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
        .background(.yellow.gradient)
//        .background(
//            Gradient(colors: [.white, .blue, .red])
//        )
//        .background(.yellow.opacity(0.5))
//        .border(Color.gray)
    }
}

#Preview {
    ContentView()
}
