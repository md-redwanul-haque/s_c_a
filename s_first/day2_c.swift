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
        VStack {
            HStack {
                Image(systemName: "person.fill")
                    .CustomIconDesign()
                 Text("Name:")
                    .titleStyle()
                 Spacer()
                 Text("John")
                
             }
            .font(.title)
            .padding()
             HStack {
                 Image(systemName: "mail.fill")
                     .CustomIconDesign()
                 Text("Email:")
                     .titleStyle()
                 Spacer()
                 Text("john@test.com")
             }
             .font(.title)
             .padding()
 
            
            Text("Press here")
                .customButtonStyle()
        }
        .customVStackStyle()
    }
}

#Preview {
    day2_c()
}

extension Text {
    func titleStyle() -> some View {
        self
            .font(.title)
            .bold()
            .foregroundStyle(.red)
    }
}

extension Image {
    func CustomIconDesign() -> some View {
        self
                 .padding()
                 .frame(width: 45, height: 40)
                 .background(.gray)
                 .clipShape(Circle())
                 .padding(.trailing)
    }
}

extension Text {
    func customButtonStyle() -> some View {
        self
            .foregroundStyle(.white)
            .font(.title)
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 10,)
                    .stroke(.white, lineWidth: 15)
                    .fill(.red)
            ).padding()
    }
}

extension VStack {
    func customVStackStyle() -> some View {
        self
            .background(
                 RoundedRectangle(cornerRadius: 12)
                     .fill(Color.black)
             )
            .foregroundStyle(.red)
            .frame(maxWidth:.infinity)
            .padding()
    }
}


