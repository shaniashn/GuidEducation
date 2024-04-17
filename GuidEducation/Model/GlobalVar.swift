//
//  GlobalVar.swift
//  GuidEducation
//
//  Created by Sha Nia Siahaan on 16/04/24.
//

import Foundation

struct Answers: Identifiable {
    var id: Int
    var ans: String
    var isSelected: Bool
    
//    mutating func isSelected(id: Int) -> Bool {
//        var checkSelected = isSelected ? false : true
//        return checkSelected
//    }
}

var answrs1: [Answers] = [
    Answers(id: 1, ans: "Very well, they actively participated throughout the whole activity", isSelected: false),
    Answers(id: 2, ans: "Good, they showed a sign of interest and participated enough in the activity", isSelected: false),
    Answers(id: 3, ans: "Poor, they didn’t seem to be interested and weren’t participating fully", isSelected: false)
]
