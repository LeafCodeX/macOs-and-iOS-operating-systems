//
//  ContentView.swift
//  Laboratory_6
//
//  Created by Marcin Bajkowski on 13/05/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List(students) { student in StudentRow(student: student)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

/*
 struct ContentView: View {
     var body: some View {
         VStack(alignment: .leading) {
             Text("Student Name")
                 .font(.title)
             HStack {
                 Text("Index Number")
                     .font(.subheadline)
                 Spacer()
                 Text("Points")
                     .font(.subheadline)
             }
         }
         .padding()
     }
 }
 */
