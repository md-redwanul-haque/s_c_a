//
//  day4.swift
//  s_practice
//
//  Created by Md Redwanul Haque on 16/12/25.
//

import Foundation
import SwiftUI


struct day4: View {
    @State var count = 0
    @State var isOn = false
    var body: some View {
        Text("Count: \(count)")
            .font(.system(size: 50, weight: .bold))
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
        
        Toggle("Enable Notifications \(isOn)", isOn: $isOn)
            .padding()
        Text("Count: \(count)")
            .font(.system(size: 50, weight: .bold))
            .foregroundColor(count > 0 ? .green : count < 0 ?
                .red : .yellow)
     
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
        
    }
}
