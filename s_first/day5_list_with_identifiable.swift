//
//  day5_list_with_identifiable.swift
//  s_practice
//
//  Created by Md Redwanul Haque on 27/12/25.
//

import Foundation
import SwiftUI

struct day5_list_with_identifiable: View {
    
    @State private var taskList = [
        Task(title: "Buy milk", priority: .high, deuDate: Date()),
        Task(title: "Go for a walk", priority: .medium, deuDate: Date()),
        Task(title: "Read a book", priority: .low, deuDate: Date()),
        Task(title: "Meditate", priority: .high, deuDate: Date()),
        Task(title: "Learn SwiftUI", priority: .medium, deuDate: Date()),
        Task(title: "Exercise", priority: .low, deuDate: Date()),
    ]
    
    var body: some View {
        List (taskList){ task in
            HStack{
                VStack(alignment: .leading){
                    Text(task.title)
                        .font(.headline)
                    Text(task.deuDate, style: .date)
            
                }
                Spacer()
                Text(task.priority.rawValue)
                
                    .foregroundStyle(priorityColor(task.priority))
                    .font(.caption)
            }
        }
    }
    func priorityColor(_ priority: Task.Priority) -> Color {
        switch priority {
        case .low: return .green
        case .medium: return .orange
        case .high: return .red
        }
    }
}


#Preview {
    day5_list_with_identifiable()
}


struct Task: Identifiable {
    var id = UUID()
    var title: String
    var priority: Priority
    let deuDate: Date
    
    enum Priority: String, CaseIterable {
        case high = "High"
        case medium = "Medium"
        case low = "Low"
    }
    
}
