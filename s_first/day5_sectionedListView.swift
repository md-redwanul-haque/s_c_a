//
//  day5_sectionedListView.swift
//  s_practice
//
//  Created by Md Redwanul Haque on 27/12/25.
//

import Foundation
import SwiftUI

struct day5_sectionedListView: View {
    @State private var books = [
         "The Great Gatsby", "1984", "To Kill a Mockingbird",
         "Pride and Prejudice", "The Hobbit", "The Catcher in the Rye"
     ]
     
     @State private var movies = [
         "Inception", "The Shawshank Redemption", "The Dark Knight",
         "Pulp Fiction", "Forrest Gump"
     ]
    
    var body: some View {
        List {
            Section(header: Text("Books").font(.headline)){
                ForEach(books, id: \.self) { book in
                    HStack{
                        Image(systemName: "book.fill")
                            .foregroundColor(.blue)
                        Text(book)
                    }
                    
                }
            }
            
            Section(header: Text("Movies")){
                ForEach(movies, id: \.self) { movie in
                    HStack{
                        Image(systemName: "film.fill")
                            .foregroundColor(.purple)
                        Text(movie)
                    }
                }
            }
            Section(header: Text("Statistics").font(.headline),
                    footer: Text("Total: \(books.count + movies.count)")
            
            ){
                HStack{
                    Text("Books: \(books.count)")
                    Spacer()
                    Text("Movies: \(movies.count)")
                }
            }
            
        }
        .listStyle(InsetGroupedListStyle())
    }
}

#Preview {
    day5_sectionedListView()
}
