//
//  ContentView.swift
//  Navigation
//
//  Created by 宮野智宏 on 2024/01/08.
//

import SwiftUI

struct ContentView: View {
    @State var isShow = false
    @State var isShowDialog = false

    var body: some View {
        
            VStack {
                Button("alart") {
                    isShow = true
                }
                .padding()
                
                Button("Dialog") {
                    isShowDialog = true
                }
                .padding()
                
            }
            .padding()
            .alert("警告", isPresented: $isShow) {
                Button("OK", role: .destructive) {
                    
                }
                Button("NG", role: .cancel) {
                    
                }
            } message: {
                Text("警告です")
            }
            .confirmationDialog("title", isPresented: $isShowDialog) {
                Button("A") {
                    
                }
                Button("X") {
                    
                }
                Button("C") {
                    
                }
            }
            
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
