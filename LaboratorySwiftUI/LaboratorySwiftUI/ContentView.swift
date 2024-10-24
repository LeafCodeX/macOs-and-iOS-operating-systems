//
//  ContentView.swift
//  LaboratorySwiftUI
//
//  Created by Marcin Bajkowski on 14/05/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List(students) {
            student in StudentRow(student: student)
        }
        /*VStack(alignment: .leading) {
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
        .padding()*/
    }
}

#Preview {
    ContentView()
}
