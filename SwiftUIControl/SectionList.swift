//
//  SectionList.swift
//  SwiftUIControl
//
//  Created by nhatle on 8/2/20.
//

import SwiftUI

struct TbData: Identifiable {
    struct Item: Identifiable {
        let id: Int
        let name: String
    }

    let type: String
    let items: [Item]

    static func dummy() -> [Self] {
        [
            TbData(type: "Piza",
                   items: [
                    Item(id: 1, name: "P1"),
                    Item(id: 2, name: "P2"),
                    Item(id: 3, name: "P3"),
                    Item(id: 4, name: "P4"),
                    Item(id: 5, name: "P5"),
                    Item(id: 6, name: "P6"),
                    Item(id: 7, name: "P7")
                   ]),
            TbData(type: "KFC",
                   items: [
                    Item(id: 1, name: "K1"),
                    Item(id: 2, name: "k2"),
                    Item(id: 3, name: "K3"),
                    Item(id: 4, name: "K4"),
                    Item(id: 5, name: "K5"),
                    Item(id: 6, name: "k6"),
                    Item(id: 7, name: "K7"),
                    Item(id: 8, name: "K8"),
                    Item(id: 9, name: "K9"),
                    Item(id: 10, name: "K10"),
                    Item(id: 11, name: "k11"),
                    Item(id: 12, name: "K12"),
                    Item(id: 13, name: "K13")
                   ])
        ]
    }
}

extension TbData {
    var id: String {
        type
    }
}

struct SectionList: View {
    let menus = TbData.dummy()
    var body: some View {
        NavigationView {
            List {
                ForEach(menus) { section in
                    Section(header: Text(section.type)) {
                        ForEach(section.items) { item in
                            Text(item.name)
                        }
                    }
                }
            }
            .listStyle(GroupedListStyle())
            .navigationBarTitle("Menu")
            //Mode display for navigation bar title displayMode: .inline)
        }
    }
}
