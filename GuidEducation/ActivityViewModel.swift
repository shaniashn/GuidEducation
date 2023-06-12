//
//  ActivityViewModel.swift
//  GuidEducation
//
//  Created by Sha Nia Siahaan on 12/06/23.
//

import Foundation
import SwiftUI

class ActivityViewModel: ObservableObject {
    @Published var storedActivity: [Activity] = [
        Activity (judul: "Matrix", deskripsi: "ini adalah deskripsi dari aktivitas yang akan dilakukan", image: "", tags: ["Ulangan Harian","Ujian Akhir", "Matematika", "Science"], activityDate: .init(timeIntervalSince1970: 1686460392)),
        Activity (judul: "Matrix2", deskripsi: "ini adalah deskripsi dari aktivitas yang akan dilakukan", image: "", tags: ["Ulangan Harian","Ujian Akhir", "Hitung"], activityDate: .init(timeIntervalSince1970: 1686460392)),
        Activity (judul: "Matrix3", deskripsi: "ini adalah deskripsi dari aktivitas yang akan dilakukan", image: "", tags: ["Ulangan Harian","Ujian Akhir", "Matematika", "Science"], activityDate: .init(timeIntervalSince1970: 1686460392)),
        Activity (judul: "Matrix4", deskripsi: "ini adalah deskripsi dari aktivitas yang akan dilakukan", image: "", tags: ["Ulangan Harian","Ujian Akhir", "Matematika", "Science"], activityDate: .init(timeIntervalSince1970: 1686460392))
    ]
    
    @Published var currentWeek: [Date] = []
    @Published var currentDay: Date = Date()
    
    
    init() {
        fetchCurrentWeek()
    }
    
    func fetchCurrentWeek() {
        let today = Date()
        let calendar = Calendar.current
        
        let week = calendar.dateInterval(of: .weekOfMonth, for: today)
        
        guard let firstWeekDay = week?.start else {
            return
        }
        
        (1...7).forEach { day in
            if let weekday = calendar.date(byAdding: .day, value: day, to: firstWeekDay) {
               currentWeek.append(weekday)
            }
        }
        print(currentWeek)
        print(currentDay)
    }
    
    func extractDate(date: Date, format: String) -> String {
        let formatter = DateFormatter()
        
        formatter.dateFormat = format
        return formatter.string(from: date)
    }
    
    func isToday(date: Date) -> Bool {
        let calendar = Calendar.current
        
        let formatter = DateFormatter()
        
        formatter.dateFormat = "dd"
        print("=====")
        print(formatter.string(from: date))
        return calendar.isDate(currentDay, inSameDayAs: date)
    }
}
