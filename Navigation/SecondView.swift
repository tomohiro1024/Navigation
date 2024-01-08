//
//  SecondView.swift
//  Navigation
//
//  Created by 宮野智宏 on 2024/01/08.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        ZStack {
            Color.orange
                .ignoresSafeArea()
            Text("Second")
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
