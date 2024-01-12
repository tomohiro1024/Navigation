//
//  ContentView.swift
//  Navigation
//
//  Created by 宮野智宏 on 2024/01/08.
//

import SwiftUI

struct ContentView: View {
    @State var taskList = [(title: "買い物をする", isComp: false),
                           (title: "電車に乗る", isComp: false),
                           (title: "料理をする", isComp: false)]
    
    var body: some View {
        
        NavigationStack {
            List(0..<taskList.count, id: \.self) { index in
                Button {
                    if(taskList[index].isComp == true) {
                        taskList[index].isComp = false
                    } else {
                        taskList[index].isComp = true
                    }
                    
                    
                } label: {
                    HStack {
                        Image(systemName: taskList[index].isComp == true ? "checkmark.seal.fill" : "circle")
                        Text(taskList[index].title)
                    }
                }
                .foregroundColor(.primary)
                
                
                
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
