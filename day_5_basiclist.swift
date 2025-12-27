//
//  day_5_basiclist.swift
//  s_practice
//
//  Created by Md Redwanul Haque on 27/12/25.
//

import Foundation
import SwiftUI

struct day_5_basiclist: View {
    var fruits = ["apple", "banana", "orange", "parsimon"]
    var number = Array(1...10)
    var body: some View {
        List{
            Text("Fruits List")
                .font(.headline)
            ForEach(fruits, id: \.self) {fruit in
            Text(fruit)
            }
        }
        .padding()
        
        List(fruits , id: \.self){ fruit in
            Text(fruit)
        }
        
        ForEach(number, id: \.self) { number in
                       Text("Number \(number)")
                   }
        ScrollView{
            VStack {
                ForEach(0..<15, id: \.self) { item in
                    Text("Hellow\(item)")
                }
            }
            LazyVStack {
                ForEach(0..<15, id: \.self) { item in
                    Text("test\(item)")
                }
            }
        }
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 12) {
                ForEach(0..<10) { i in
                    RoundedRectangle(cornerRadius: 10)
                        .fill(.blue)
                        .frame(width: 120, height: 180)
                }
            }
            .padding()
        }
    }
}
#Preview {
    day_5_basiclist()
}
