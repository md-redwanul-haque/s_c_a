//
//  day2_c.swift
//  s_practice
//
//  Created by Md Redwanul Haque on 16/12/25.
//

import Foundation
import SwiftUI


struct day2_c: View {
    var body: some View {
        VStack (spacing :0) {
            HStack() {
                Text("Hello")
                Text("World!")
            }
            .frame( maxWidth: .infinity,)
            .frame(height: 40)
            .background(
                 RoundedRectangle(cornerRadius: 12)
                     .fill(Color.red)
             )
            .padding(.horizontal)
       
            HStack() {
                Text("Hello")
                Text("World!")
            }
            .frame( maxWidth: .infinity,)
            .frame(height: 40)
            .background(
                 RoundedRectangle(cornerRadius: 12)
                     .fill(Color.red)
             )
            .padding()
            
        }
        VStack {
            HStack {
                 Text("Name:")
                 Spacer()
                 Text("John")
             }
            .font(.title)
            .padding()
             HStack {
                 Text("Email:")
                 Spacer()
                 Text("john@test.com")
             }
             .font(.title)
             .padding()
        }
       
        .background(
             RoundedRectangle(cornerRadius: 12)
                 .fill(Color.black)
         )
        .foregroundStyle(.red)
        .frame(maxWidth:.infinity)
        .padding()
    }
}

#Preview {
    day2_c()
}

