//
//  FormViiew.swift
//  SwiftUIControl
//
//  Created by nhatle on 7/30/20.
//

import SwiftUI

struct FormView: View {
    @State private var quantity: Int = 0
    @State private var date: Date = Date()
    @State private var selection: Int = 0

    var body: some View {
        NavigationView {
            Form {
                Section {
                    Text("Plain Text")
                    Stepper(value: $quantity, in: 0...10, label: { Text("Quantity") })
                }
                Section {
                    DatePicker(selection: $date, label: { Text("Due Date") })
                    Picker(selection: $selection, label:
                        Text("Picker Name")
                        , content: {
                            Text("Value 1").tag(0)
                            Text("Value 2").tag(1)
                            Text("Value 3").tag(2)
                            Text("Value 4").tag(3)
                    })
                }
            }
        }
    }
}

