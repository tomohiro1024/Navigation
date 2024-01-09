//
//  ContentView.swift
//  Navigation
//
//  Created by 宮野智宏 on 2024/01/08.
//

import SwiftUI

struct ContentView: View {
    @State var num = 0
    @State var isShow = false
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Button("-") {
                        num -= 1
                        
                    }
                    Text("Counter: \(num)")
                    Button("+") {
                        num += 1
                    }

                }
                .padding()
                Button("画面遷移") {
                    isShow = true
                    
                }
            }
            .font(.title)
            .sheet(isPresented: $isShow) {
                MyView(count: $num)
            }
        }
    }
}

struct MyView: View {
    @Binding var count: Int
    
    var body: some View {
        Button("+5") {
            count += 5
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
