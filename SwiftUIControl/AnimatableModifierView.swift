//
//  AnimatableModifierView.swift
//  SwiftUIControl
//
//  Created by nhatle on 8/7/20.
//

import SwiftUI

struct AnimatableModifierView: View {
    @State private var fontSize: CGFloat = 32

    var body: some View {
        Text("Hello, AnimatableModifier!")
            .animatableFont(name: "Georgia", size: fontSize)
            .onTapGesture {
                withAnimation(Animation.spring(response: 0.5, dampingFraction: 0.5, blendDuration: 1).repeatForever()) {
                    self.fontSize = 144
                }
            }
    }
}

struct AnimatableCustomFontModifier: AnimatableModifier {
    var name: String
    var size: CGFloat

    var animatableData: CGFloat {
        get { size }
        set { size = newValue }
    }

    func body(content: Content) -> some View {
        content
            .font(.custom(name, size: size))
    }
}

extension View {
    func animatableFont(name: String, size: CGFloat) -> some View {
        self.modifier(AnimatableCustomFontModifier(name: name, size: size))
    }
}

