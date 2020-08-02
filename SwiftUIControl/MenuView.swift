//
//  ManuView.swift
//  SwiftUIControl
//
//  Created by nhatle on 8/2/20.
//

import SwiftUI

struct MenuView: View {
    @State private var currentItem = "Menu"
    var body: some View {
        Menu(currentItem) {
            Button(action: {
                currentItem = "1"
            }) {
                Text("Items 1")
            }
            Button(action: {
                currentItem = "2"
            }) {
                Text("Items 2")
            }
            Button(action: {
                currentItem = "3"
            }) {
                Text("Items 3")
            }
        }
    }
}

struct ManuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
