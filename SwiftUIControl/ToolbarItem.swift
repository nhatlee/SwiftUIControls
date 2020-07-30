//
//  ToolbarItem.swift
//  SwiftUIControl
//
//  Created by nhatle on 7/30/20.
//

import SwiftUI

struct ToolbarItemView: View {
    var body: some View {
        NavigationView {
            Text("SwiftUI").padding()
                .toolbar {
                    ToolbarItem(placement: .bottomBar) {
                        Button {

                        } label: {
                            Image(systemName: "archivebox")
                        }
                    }

//                    ToolbarItem(placement: .bottomBar) {
//                        Spacer()
//                    }

                    ToolbarItem(placement: .bottomBar) {
                        Button {

                        } label: {
                            Image(systemName: "square.and.pencil")
                        }
                    }
                }
        }
    }
}
