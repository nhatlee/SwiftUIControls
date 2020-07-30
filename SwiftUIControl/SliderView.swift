//
//  SliderView.swift
//  SwiftUIControl
//
//  Created by nhatle on 7/30/20.
//

import SwiftUI

struct SliderView: View {
    @State private var progress: Double = 0
    var body: some View {
        VStack {
            Slider(value: $progress, in: -100...100, step: 0.1)
            Text("\(progress) Celsius is \(progress * 9 / 5 + 32) Fahrenheit")
        }
    }
}
