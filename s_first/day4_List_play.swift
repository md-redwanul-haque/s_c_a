//
//  day4_List_play.swift
//  s_practice
//
//  Created by Md Redwanul Haque on 25/12/25.
//

import Foundation
import SwiftUI

struct day4_List_play: View {
    @State var count = 0
    @State var logs: [String] = []
    
    var body: some View {
        
        VStack {
            
            Text("Count- \(count)")
                .padding()
            HStack {
                Button("+") {
                    count += 1
                    logs.append(" increment to \(count) at \(Date())")
                }
                Button("-") {
                    count -= 1
                    logs.append(" decrement to \(count) at \(Date())")
                }
                
             
            }
            Button ("Reset"){
                logs.removeAll()
                count = 0
            }
            List(logs.reversed(), id: \.self) { log in Text(log)
                    .font(.caption)
            
            }
            .padding()
         
        
        }
        
        
    }
}
#Preview {
    day4_List_play()
}
