//
//  StudentRow.swift
//  LaboratorySwiftUI
//
//  Created by Marcin Bajkowski on 14/05/2024.
//

import SwiftUI

struct StudentRow: View {
    var student: Student
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("\(student.firstName) \(student.lastName)")
                .font(.title)
            HStack {
                Text("Index Number: \(student.indexNumber)")
                    .font(.subheadline)
                Spacer()
                Text("Points: \(student.points)")
                    .font(.subheadline)
            }
        }
        .padding()
    }
}

#Preview {
    StudentRow(student: students[0])
}
