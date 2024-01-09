//
//  ContentView.swift
//  Navigation
//
//  Created by 宮野智宏 on 2024/01/08.
//

import SwiftUI

struct ContentView: View {
    @State var num = 0
    
    var body: some View {
        NavigationStack {
            HStack {
                Button("-") {
                    num = num - 1
                    
                }
                Text("Counter: \(num)")
                Button("+") {
                    num = num + 1
                }

            }
            .padding()
            .font(.title)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
