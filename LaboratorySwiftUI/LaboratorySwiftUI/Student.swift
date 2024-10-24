//
//  Student.swift
//  LaboratorySwiftUI
//
//  Created by Marcin Bajkowski on 14/05/2024.
//

import Foundation

struct Student: Hashable, Codable, Identifiable {
    let id: Int
    let firstName: String
    let lastName: String
    let indexNumber: String
    let points: String
}

var students:[Student] = [Student(id: 0, firstName: "John", lastName: "Smith", indexNumber: "200000", points: "15"),
                          Student(id: 1, firstName: "Emily", lastName: "Johnson", indexNumber: "200001", points: "20"),
                          Student(id: 2, firstName: "Michael", lastName: "Williams", indexNumber: "200002", points: "30"),
                          Student(id: 3, firstName: "Sophia", lastName: "Brown", indexNumber: "200003", points: "18")]
