////
////  DatePicker.swift
////  SwiftUIControl
////
////  Created by nhatle on 8/6/20.
////
//
//import SwiftUI
///*
// DatePicker("Minimum Date",
//     selection: $selectedDate,
//     in: Date()...,
//     displayedComponents: [.date])
// We use PartialRangeThrough for maximumDate.
//
// DatePicker("Maximum Date",
//     selection: $selectedDate,
//     in: ...Date(),
//     displayedComponents: [.date])
// */
//struct DatePicker: View {
//    @State var selectedDate = Date()
//
//    var dateClosedRange: ClosedRange<Date> {
//        let min = Calendar.current.date(byAdding: .day, value: -1, to: Date())!
//        let max = Calendar.current.date(byAdding: .day, value: 1, to: Date())!
//        return min...max
//    }
//
//    var body: some View {
//        DatePicker(
//            selection: $selectedDate,
//            in: dateClosedRange,
//            displayedComponents: [.hourAndMinute, .date],
//            label: { Text("Due Date") }
//        )
//    }
//}
//
//struct DatePicker_Previews: PreviewProvider {
//    static var previews: some View {
//        DatePicker()
//    }
//}
