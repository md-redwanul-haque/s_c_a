//
//  ContentView.swift
//  s_first
//
//  Created by Md Redwanul Haque on 16/12/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
    
            VStack (spacing:20){
                Text("Top")
                    .font(.title)
                    .bold()
                Text("Middle")
                    .font(.title)
                    .bold()
                Text("Bottom")
                    .font(.title)
                    .bold()
            }
            .padding(20)
            .background(Color.black)
            .foregroundStyle(.red)
            
           
        HStack(alignment:.center) {
            Text("Big")
                .font(.largeTitle)

            Text("Small")
        }
        ZStack {
            Color.blue.ignoresSafeArea()
            Text("On Top")
                .foregroundStyle(.white)
        }
    
    }
}

#Preview {
    ContentView()
}
