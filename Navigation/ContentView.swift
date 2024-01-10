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
        
        NavigationStack {
            List {
                HStack {
                    Image(systemName: "circle")
                    Text("買い物をする")
                }
                HStack {
                    Image(systemName: "checkmark")
                    Text("電車に乗る")
                }
                HStack {
                    Image(systemName: "circle")
                    Text("料理をする")
                }
            }
            .navigationTitle("TodoApp")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
