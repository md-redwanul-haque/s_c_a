//
//  day4_p2.swift
//  s_practice
//
//  Created by Md Redwanul Haque on 17/12/25.
//

import Foundation
import SwiftUI


struct day4_p2: View {
    @State var userName = ""
    @State var passWord = ""
    @State var rememberMe = false
    @State var isLoggedIn = false
    
    
    
    var body: some View {
        VStack(alignment: .leading, spacing:20) {
            Text("LogIn")
                .font(.largeTitle)
                .bold()
            
            VStack(alignment: .leading) {
                Text("User Name")
                    .font(.caption)
                TextField("Enter User Name", text: $userName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
           
                   
//                    .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.gray, lineWidth: 1))
            }
            VStack(alignment: .leading,){
                Text("Password")
                    .font(.caption)
                SecureField("Enter Password", text: $passWord)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
//                    .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.gray, lineWidth: 1))
            }
            Toggle("Remember me", isOn: $rememberMe)
                .toggleStyle(SwitchToggleStyle(tint: .blue))
            
       
            Button("Login") {
                        // Simple validation
                        if !userName.isEmpty && !passWord.isEmpty {
                            isLoggedIn = true
                        }
                    }
            .ButtonDesign(String: userName, String: passWord)
            
            if isLoggedIn && rememberMe {
                Text("Welcome \(userName)")
                    .font(.largeTitle)
                    .foregroundColor(.green)
                    .padding()
                VStack {
                                Text("Debug Info:")
                                    .font(.caption)
                                Text("Username: \(userName)")
                                Text("Password length: \(passWord.count)")
                                Text("Remember: \(rememberMe ? "Yes" : "No")")
                            }
                            .font(.largeTitle)
                            .foregroundColor(.gray)
              
            }
            CustomToggle(isOn: $rememberMe, label: "Test")
            SettingsView()
         
                
        }
        .padding()
    }
}

#Preview {
    day4_p2()
}

//@State

struct ExampleView: View {
    @State private var text = ""  // ✅ Owned by this view
    
    var body: some View {
        ChildView(text: $text)    // ✅ Pass as binding
    }
}


//@Binding
struct ChildView: View {
    @Binding var text: String     // ✅ Receives binding
    
    var body: some View {
        TextField("Enter text", text: $text)
    }
}

extension Button {
    func ButtonDesign(String userName: String, String passWord: String) -> some View {
        self
            .font(.title2)
            .padding()
            .frame(maxWidth: .infinity)
            .background(userName.isEmpty || passWord.isEmpty ?
                       Color.gray : Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
            .disabled(userName.isEmpty || passWord.isEmpty)
    }
}


struct CustomToggle: View {
    @Binding var isOn: Bool
    let label: String
    
    var body: some View {
        HStack {
            Text(label)
            Spacer()
            Button {
                isOn.toggle()
            } label: {
                RoundedRectangle(cornerRadius: 15)
                    .fill(isOn ? Color.green : Color.gray)
                    .frame(width: 50, height: 30)
                    .overlay(
                        Circle()
                            .fill(Color.white)
                            .frame(width: 26, height: 26)
                            .offset(x: isOn ? 10 : -10)
                    )
            }
        }
        .padding()
        .background(Color.gray)
        .cornerRadius(10)
    }
}

struct SettingsView: View {
    @State private var darkMode = false
    @State private var notifications = true
    @State private var autoSync = false
    
    var body: some View {
        Form {
            Section("Preferences") {
                CustomToggle(isOn: $darkMode, label: "Dark Mode")
                CustomToggle(isOn: $notifications, label: "Notifications")
                CustomToggle(isOn: $autoSync, label: "Auto Sync")
            }
            
            Section("Current States") {
                Text("Dark Mode: \(darkMode ? "On" : "Off")")
                Text("Notifications: \(notifications ? "On" : "Off")")
                Text("Auto Sync: \(autoSync ? "On" : "Off")")
            }
        }
    }
}
