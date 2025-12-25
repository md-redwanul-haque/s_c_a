//
//  day4_p3.swift
//  s_practice
//
//  Created by Md Redwanul Haque on 18/12/25.
//

import Foundation
import SwiftUI

struct day4_p3: View {
    var body: some View {
        Text("Hello, World!")
        ShoppingCart()
    }
}

#Preview {
    day4_p3()
}

struct ShoppingItem: Identifiable {
    let id = UUID()
    var name: String
    var price: Double
    var quantity: Int
}

struct ShoppingCart: View {
    @State private var items = [
        ShoppingItem(name: "Apple", price: 1.99, quantity: 0),
        ShoppingItem(name: "Banana", price: 0.99, quantity: 0),
        ShoppingItem(name: "Orange", price: 2.49, quantity: 0),
        ShoppingItem(name: "Milk", price: 3.99, quantity: 0)
    ]
    
    var totalPrice: Double {
        items.reduce(0) { $0 + ($1.price * Double($1.quantity)) }
    }
    
    var totalItems: Int {
        items.reduce(0) { $0 + $1.quantity }
    }
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach($items) { $item in
                        HStack {
                            VStack(alignment: .leading) {
                                Text(item.name)
                                    .font(.headline)
                                Text("$\(item.price, specifier: "%.2f") each")
                                    .font(.caption)
                                    .foregroundColor(.gray)
                            }
                            
                            Spacer()
                            
                            HStack {
                                Button {
                                    print("Minus pressed, current quantity: \(item.quantity)")
                                    if item.quantity > 0 {
                                        item.quantity -= 1
                                    }
                                    print("New quantity: \(item.quantity)")
                                } label: {
                                    Image(systemName: "minus.circle")
                                        .foregroundColor(.red)
                                }
                                
                                
                                Text("\(item.quantity)")
                                    .frame(minWidth: 30)
                                
                                Button {
                                    item.quantity += 1
                                } label: {
                                    Image(systemName: "plus.circle")
                                        .foregroundColor(.green)
                                }
                            }
                        }
                        .padding(.vertical, 5)
                    }
                }
                
                // Cart Summary
                VStack {
                    HStack {
                        Text("Total Items:")
                        Spacer()
                        Text("\(totalItems)")
                    }
                    
                    HStack {
                        Text("Total Price:")
                            .font(.headline)
                        Spacer()
                        Text("$\(totalPrice, specifier: "%.2f")")
                            .font(.headline)
                            .foregroundColor(.blue)
                    }
                }
                .padding()
                .background(Color(.gray))
            }
            .navigationTitle("Shopping Cart")
        }
    }
}
