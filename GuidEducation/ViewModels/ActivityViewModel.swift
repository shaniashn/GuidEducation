//
//  ActivityViewModel.swift
//  GuidEducation
//
//  Created by Sha Nia Siahaan on 19/03/24.
//

import Foundation
import CoreData

class ActivityManager {
    static let shared = ActivityManager()
    let container: NSPersistentContainer
    let context: NSManagedObjectContext
    
    init() {
        container = NSPersistentContainer(name: "")
        container.loadPersistentStores { (description, error) in
            if let error = error {
                fatalError("Error loading CoreData. \(error)")
            }
        }
        context = container.viewContext
    }
}

class ActivityViewModel: ObservableObject {
    let manager = ActivityManager.shared
    
    @Published var cards: [Card] = ActivityData.cardData
    @Published var tags: [Tag] = ActivityData.theTags
    @Published var activity: Activity = ActivityData.activityData
    
    @Published var dateAWeek: [Date] = []
    @Published var currentDate: Date = Date()
    
    @Published var weekOfMonthPointt = 1
    
    @Published var activities: [ActivityEntity] = []
    
    init() {
        //kalo ini bisa diganti dari sumbernya yaitu ActivityData, berarti melanggar aturan MVVM krn harusnya yg boleh mengubah let activity itu cuma viewmodel
//        let cards = ActivityData.cardData
//        let tags = ActivityData.theTags
        self.cards = cards
        self.tags = tags
        self.activity = activity
//        fetchRequest()
        getWeekOfDay()
    }
    
//      MARK: - Versi 1
//    func getWeekOfDay() -> [Date] {
//        var dateAWeek: [Date] = []
//        let calendar = Calendar(identifier: .gregorian)
//        let dateComponent = calendar.dateComponents([
//            .calendar,
//            .month,
//            .weekday,
//            .weekOfMonth,
//            .day
//        ], from: currentDate)
//        
//        let weekOfMonthPoint = dateComponent.weekOfMonth ?? 0
//        let monthPoint = dateComponent.month ?? 0
//        
//        for i in 1..<8 {
//            let datePerWeek = DateComponents(year: 2024, month: monthPoint, weekday: i, weekOfMonth: weekOfMonthPoint)
//            
//            if let calendarPerWeek = calendar.date(from: datePerWeek) {
//                dateAWeek.append(calendarPerWeek)
////                dateAWeek.append(Date())
//            }
//            
////            let dateNumber = Calendar.current.dateComponents([.day], from: calendarPerWeek ?? Date())
//            
////            dateAWeek.append(dateNumber)
////            dateAWeek.append(dateNumber.day ?? 0)
//            
//        }
//        return dateAWeek
//    }
    
//      MARK: - Versi 2
    func getWeekOfDay() {
//        var dateAWeek: [Date] = []
        let calendar = Calendar(identifier: .gregorian)
        let dateComponent = calendar.dateComponents([
            .calendar,
            .month,
            .weekday,
            .weekOfMonth,
            .day
        ], from: currentDate)
        
        let weekOfMonthPoint = dateComponent.weekOfMonth ?? 0
        let monthPoint = dateComponent.month ?? 0
        
        self.weekOfMonthPointt = weekOfMonthPoint
        
        for i in 1..<8 {
            let datePerWeek = DateComponents(year: 2024, month: monthPoint, weekday: i, weekOfMonth: weekOfMonthPointt)
            
            if let calendarPerWeek = calendar.date(from: datePerWeek) {
                dateAWeek.append(calendarPerWeek)
//                dateAWeek.append(Date())
            }
            
//            let dateNumber = Calendar.current.dateComponents([.day], from: calendarPerWeek ?? Date())
            
//            dateAWeek.append(dateNumber)
//            dateAWeek.append(dateNumber.day ?? 0)
        }
//        return dateAWeek
        print("dateAWeek -> ", dateAWeek)
    }
    
    func getNextWeek(){
        dateAWeek.removeAll()
        print("dateAWeek --> ", dateAWeek)
        let calendar = Calendar(identifier: .gregorian)
        if let dateNext = calendar.date(byAdding: .weekOfMonth, value: 1, to: currentDate) {
//            print(currentDate)
//            print(dateNext)
            currentDate = dateNext
        }
        
        getWeekOfDay()
    }
    
    func getPrevWeek(){
        dateAWeek.removeAll()
        print("dateAWeek --> ", dateAWeek)
        let calendar = Calendar(identifier: .gregorian)
        if let dateBefore = calendar.date(byAdding: .weekOfMonth, value: -1, to: currentDate) {
            currentDate = dateBefore
        }
        
        getWeekOfDay()
    }
    
    func formatDate(date: Date, format: String) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        
        return formatter.string(from: date)
    }
    
    func makeTodayDate(date: Date) -> Bool {
//        let checkIsTodayDate = Calendar.current.isDateInToday(date)
        let checkDate = Calendar.current.isDate(currentDate, inSameDayAs: date)
        return checkDate
    }
    
//    func fetchRequest() {
//        let request = NSFetchRequest<ActivityEntity>(entityName: "Activity")
//        
//        do {
//            activities = try manager.context.fetch(request)
//        } catch let error as NSError {
//            print("Can't fetch data. \(error)")
//        }
//    }
    
    func addItem(){
        guard let entityMethod = NSEntityDescription.entity(forEntityName: "", in: manager.context) else { return }
        let objMethod = NSManagedObject(entity: entityMethod, insertInto: manager.context)
    }
    
    func saveItems() {
        do {
            try manager.context.save()
        } catch {
            let nsError = error as NSError
            fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
        }
    }
}
