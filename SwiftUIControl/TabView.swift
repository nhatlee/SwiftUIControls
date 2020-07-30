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
        }
    }
}

struct TableView_Previews: PreviewProvider {
    static var previews: some View {
        TabView()
    }
}
