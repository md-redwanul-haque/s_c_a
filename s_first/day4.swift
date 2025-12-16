//
//  day4.swift
//  s_practice
//
//  Created by Md Redwanul Haque on 16/12/25.
//

import Foundation
import SwiftUI


struct day4: View {
    @State var count = 10
    var body: some View {
        Text("Count: \(count)")
            .font(.title)
        HStack {
            Button("Decrease") {
                count -= 1
            }
            .customButtonStyle(color: Color.black, foregroundColor: Color.white)
            Button("Increase") {
                count += 1
            }
            .customButtonStyle(color: Color.red, foregroundColor: Color.black)
        }
     
    }
}

#Preview {
    day4()
}


extension Button {
    func customButtonStyle(color: Color, foregroundColor: Color) -> some View {
        self
            .foregroundStyle(foregroundColor)
            .font(.title)
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.white, lineWidth: 15)
                    .fill(color)  // Use the dynamic color here
            )
            .padding()
    }
}
