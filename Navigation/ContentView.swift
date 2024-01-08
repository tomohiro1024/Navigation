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
            VStack {
                NavigationLink {
                    SecondView()
                } label: {
                    Text("画面遷移")
                }
                
                Button("モーダル遷移") {
                    isShow = true
                    
                }
                .padding()
                .sheet(isPresented: $isShow) {
                    SecondView()
                }

            }
            .padding()
            .navigationTitle("1")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
