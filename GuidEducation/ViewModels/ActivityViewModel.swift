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
        container = NSPersistentContainer(name: "GuidEducationModelData")
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
    @Published var methods: [MethodEntity]?
    @Published var engages: Engage = engageItem
    
    init() {
        //kalo ini bisa diganti dari sumbernya yaitu ActivityData, berarti melanggar aturan MVVM krn harusnya yg boleh mengubah let activity itu cuma viewmodel
//        let cards = ActivityData.cardData
//        let tags = ActivityData.theTags
        self.cards = cards
        self.tags = tags
        self.activity = activity
        fetchRequest()
        getWeekOfDay()
//        self.methods = engages.engageAct
        
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
    
    func fetchRequest() {
        
        print("fetching...")
        
        let request = NSFetchRequest<ActivityEntity>(entityName: "ActivityEntity")
        let requestMethod = NSFetchRequest<MethodEntity>(entityName: "MethodEntity")
        
        do {
            activities = try manager.context.fetch(request)
//            methods = try manager.context.fetch(requestMethod)
            print(activities)
        } catch let error as NSError {
            print("Can't fetch data. \(error)")
        }
    }
    
//    func addItem(){
//        guard let entityActivity = NSEntityDescription.entity(forEntityName: "", in: manager.context) else { return }
//        guard let entityMethod = NSEntityDescription.entity(forEntityName: "", in: manager.context) else { return }
//        let objActivity = NSManagedObject(entity: entityActivity, insertInto: manager.context)
//        let objMethod = NSManagedObject(entity: entityMethod, insertInto: manager.context)
//        
//        
//        
//    }
    
    func addToMethodList(text: String, methods: [Method]) {
        
        
    }
    
    func addActivity(title: String, obj: String, tag: [Tag]) {
        guard let entityActivity = NSEntityDescription.entity(forEntityName: "ActivityEntity", in: manager.context) else { return }
        let objActivity = NSManagedObject(entity: entityActivity, insertInto: manager.context)
        objActivity.setValue(title, forKeyPath: "title")
        print("title: ", title)
        print(objActivity.value(forKeyPath: "title"))
        saveItems()
    }
    
    func addActivityV2(title: String) {
        var activityItem = ActivityEntity(context: manager.context)
        activityItem.title = title
        saveItems()
        
    }
    
    func saveItems() {
        do {
            try manager.context.save()
            fetchRequest()
            print("saved")
        } catch {
            let nsError = error as NSError
            fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
        }
        
    }
}

class ActivityEntityManager {
    
}
