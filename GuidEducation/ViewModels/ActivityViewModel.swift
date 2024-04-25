//
//  ActivityViewModel.swift
//  GuidEducation
//
//  Created by Sha Nia Siahaan on 19/03/24.
//

import Foundation

class ActivityViewModel: ObservableObject {
    @Published var cards: [Card] = ActivityData.cardData
    @Published var tags: [Tag] = ActivityData.theTags
    @Published var activity: Activity = ActivityData.activityData
    
//    @Published var currentWeek = []
    
    init() {
        //kalo ini bisa diganti dari sumbernya yaitu ActivityData, berarti melanggar aturan MVVM krn harusnya yg boleh mengubah let activity itu cuma viewmodel
//        let cards = ActivityData.cardData
//        let tags = ActivityData.theTags
        self.cards = cards
        self.tags = tags
        self.activity = activity
    }
    
    func getWeekOfDay() -> [DateComponents] {

        var dateAWeek: [DateComponents] = []
        let calendar = Calendar(identifier: .gregorian)
        let dateComponent = calendar.dateComponents([
            .calendar,
            .month,
            .weekday,
            .weekOfMonth,
            .day
        ], from: Date())
        
        let weekOfMonthPoint = dateComponent.weekOfMonth ?? 0
        let monthPoint = dateComponent.month ?? 0
        
        for i in 1..<8 {
            let datePerWeek = DateComponents(year: 2024, month: monthPoint, weekday: i, weekOfMonth: weekOfMonthPoint)
            
            let calendarPerWeek = calendar.date(from: datePerWeek)
            
            let dateNumber = Calendar.current.dateComponents([.day], from: calendarPerWeek ?? Date())
            dateAWeek.append(dateNumber)
//            print(calendarPerWeek)
//            dateAWeek.append(dateNumber.day ?? 0)
            
        }
        return dateAWeek
    }
    
}
