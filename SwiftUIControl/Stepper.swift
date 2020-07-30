//
//  Stepper.swift
//  SwiftUIControl
//
//  Created by nhatle on 7/30/20.
//

import SwiftUI

struct StepperView: View {
    @State private var quantity: Int = 0
    var body: some View {
        Stepper(value: $quantity, in: 0...10, label: { Text("Quantity \(quantity)")})
    }
}
