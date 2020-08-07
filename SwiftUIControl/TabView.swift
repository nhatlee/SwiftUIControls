//
//  TableView.swift
//  SwiftUIControl
//
//  Created by nhatle on 7/30/20.
//

import SwiftUI
// TabView is name of control in SwiftUI framework
struct TabViewView: View {
    var body: some View {
        TabView {
            Text("First View")
                .font(.title)
                .tabItem({ Text("First") })
                .tag(0)
            Text("Second View")
                .font(.title)
                .tabItem({ Text("Second") })
                .tag(1)
            Image(systemName: "square.and.pencil")
                .redacted(reason: .placeholder)
        }
    }
}
