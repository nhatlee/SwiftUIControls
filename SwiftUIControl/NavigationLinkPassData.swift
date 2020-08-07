//
//  NavigationLinkPassData.swift
//  SwiftUIControl
//
//  Created by nhatle on 8/2/20.
//

import SwiftUI

class User: ObservableObject {
    @Published var score = 0
}

struct ChangeView: View {
    @EnvironmentObject var user: User

    var body: some View {
        VStack {
            Text("Score: \(user.score)")
            Button("Increase") {
                self.user.score += 1
            }
        }
    }
}

struct NavigationLinkPassData: View {
    @ObservedObject var user = User()

    var body: some View {
        NavigationView {
            VStack(spacing: 30) {
                Text("Score: \(user.score)")
                NavigationLink(destination: ChangeView()) {
                    Text("Show Detail View")
                }
            }
            .navigationBarTitle("Navigation")
            .navigationBarItems(
                    leading:
                        Button("Subtract 1") {
                            user.score -= 1
                        },
                    trailing:
                        Button("Add 1") {
                            user.score += 1
                        }
                )

//            .navigationBarItems(
//                    trailing:
//                        HStack {
//                            Button("Subtract 1") {
//                                user.score -= 1
//                            }
//                            Button("Add 1") {
//                                user.score += 1
//                            }
//                        }
//                )
        }
        .environmentObject(user)
    }
}

