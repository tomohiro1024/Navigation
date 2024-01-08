//
//  ContentView.swift
//  Navigation
//
//  Created by 宮野智宏 on 2024/01/08.
//

import SwiftUI

struct ContentView: View {
    @State var isShow = false
    
    var body: some View {
        NavigationStack {
            HStack {
                Button("-") {
                    
                }
                Text("Counter: ")
                Button("+") {
                    
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
