//
//  ContextMenuView.swift
//  SwiftUIControl
//
//  Created by nhatle on 8/2/20.
//

import SwiftUI

// Press and hold
struct ContextMenuView: View {
    @State private var backgroundColor = Color.red

        var body: some View {
            VStack {
                Text("Hello, World!\nPress and Hold below to change my color")
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .padding()
                    .background(backgroundColor)

                Text("Change Color")
                    .padding()
                    .contextMenu {
                        Button(action: {
                            self.backgroundColor = .red
                        }) {
                            Text("Red")
                            Image(systemName: "checkmark.circle.fill")
                                .foregroundColor(.red)
                        }

                        Button(action: {
                            self.backgroundColor = .green
                        }) {
                            Text("Green")
                        }

                        Button(action: {
                            self.backgroundColor = .blue
                        }) {
                            Text("Blue")
                        }
                    }
            }
        }
}

