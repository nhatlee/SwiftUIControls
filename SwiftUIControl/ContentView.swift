//
//  ContentView.swift
//  SwiftUIControl
//
//  Created by nhatle on 7/30/20.
//

import SwiftUI
// Blog
// https://goshdarnswiftui.com/#stepper

enum SwiftUIControls: String {
    case stepper    = "Stepper"
    case slider     = "Slider"
    case form       = "Form"
    case toolbarItem = "ToolbarItem"
    case tabView  = "TabView"
    case menuView   = "MenuView"
    case contextMenu = "ContextMenuView"
    case sectionList = "SectionList"
    case navigationPassData  = "navigationPassData"
    case animatableModifier = "AnimatableModifierView"
    case animations = "List custom animations"
}

extension SwiftUIControls : Identifiable {
    var id: String { self.rawValue }
}

protocol SwiftUIControlView {}

struct ContentView: View {
    private let controls: [SwiftUIControls] = [
        .stepper,
        .slider,
        .form,
        .toolbarItem,
        .tabView,
        .menuView,
        .contextMenu,
        .sectionList,
        .navigationPassData,
        .animatableModifier,
        .animations
    ]
    var body: some View {
        NavigationView {
            List {
                ForEach(controls) { control in
                    NavigationLink(destination: view(for: control)) {
                        Text(control.rawValue)
                    }
                }
            }
            .navigationBarTitle("SwiftUI Controls")
        }
    }

    @ViewBuilder
    private func view(for control: SwiftUIControls) -> some View {
        switch control {
        case .stepper:
            StepperView()
        case .slider:
            SliderView()
        case .form:
            FormView()
        case .toolbarItem:
            ToolbarItemView()
        case .tabView:
            TabViewView()
        case .menuView:
            MenuView()
        case .contextMenu:
            ContextMenuView()
        case .sectionList:
            SectionList()
        case .navigationPassData:
            NavigationLinkPassData()
        case .animatableModifier:
            AnimatableModifierView()
        case .animations:
            AnimationsCustomView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
