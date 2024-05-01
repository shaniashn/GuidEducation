//
//  CalendarView.swift
//  GuidEducation
//
//  Created by Sha Nia Siahaan on 25/04/24.
//

import SwiftUI
import UIKit

struct CalendarView: View {
    @EnvironmentObject var vm: ActivityViewModel
    var dateNow = Date()
    
    var body: some View {
        VStack {
            HStack(spacing: 10){
                Text("April")
                    .fontWeight(.semibold)
//                    .background(Color.orange)
                Button(action: {
                    let pp = UICalendarView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
                    pp.backgroundColor = .blue
                    
                }, label: {
                    Image(systemName: "chevron.down")
                })
//                .background(Color.blue)
            }
            .padding(.bottom, 5)
            HStack {
                Button {
                    vm.getPrevWeek()
                } label: {
                    Image(systemName: "chevron.left")
                }
                Spacer()
                HStack(spacing: 15){
    //                ForEach(vm.getWeekOfDay(), id: \.self) { i in
                    ForEach(vm.dateAWeek, id: \.self) { i in //versi 2
                        VStack(spacing: 15, content: {
                            Text(vm.formatDate(date: i, format: "E"))
                            Text(vm.formatDate(date: i, format: "dd"))
                                .background { vm.makeTodayDate(date: i) ? Color.pink : Color.clear
//                                        .frame(width: 35, height: 35)
    //                                    .clipped()
                                }
                            
                        })
                        
    //                    .background(content: {
    //                        Capsule()
    //                    })
                        .onTapGesture {
                            vm.currentDate = i
                        }
                        
                                    }
    //                ForEach(vm.getWeekOfDay(), id: \.self) { x in
    //                    Text("\(x.description(with: .autoupdatingCurrent))")
    //                }
                }
                Spacer()
                Button {
                    vm.getNextWeek()
                } label: {
                    Image(systemName: "chevron.right")
                }

            }
        }
//        .padding()
        .frame(maxWidth: .infinity)
//        .frame(height: 100)
//        .background(Color.gray)
//        .padding()
        .foregroundStyle(Color.black)
    }
    
    
//    func getCurrentWeek(){
//        var currentWeek: [Int] = []
//        
//        var calendar = Calendar(identifier: .gregorian)
//        
//        guard let dateee = calendar.dateInterval(of: .weekOfMonth, for: Date()) else {
//            return
//        }
//        
//        print(dateee.start)
//        
//    }
    
//    func getWeekOfDay() {
//        var dateComponent = Calendar.current.dateComponents([
//            .calendar,
//            .month,
//            .weekday,
//            .weekOfMonth,
//            .day
//        ], from: dateNow)
//        
//        var componentAsal = DateComponents(year: 2024, month: 2, day: 1)
//        var calendComponentAsal = Calendar.current.date(from: componentAsal)
//        //component to date
//        
////        var calendar = Calendar.current.date(byAdding: <#T##Calendar.Component#>, value: <#T##Int#>, to: <#T##Date#>)
//        
////        print(dateComponent.weekday ?? 0)
////        print(dateComponent.day)
////        print(calendComponentAsal?.description(with: .autoupdatingCurrent))
//        var range = Calendar.current.range(of: .weekday, in: .month, for: dateNow) //range weekday dalam sebulan
//        
//        var ss = Calendar.current.startOfDay(for: dateNow) //mulai hari
//        
//        print(range as Any)
//        
//        for i in 1..<8 {
//            let datePerWeek = DateComponents(year: 2024, month: 1, weekday: i, weekOfMonth: 4)
//            let calendarPerWeek = Calendar.current.date(from: datePerWeek)
//            print(calendarPerWeek?.description(with: .autoupdatingCurrent) as Any)
////            dates.append(c)
//            
//        }
////        print("ss ", ss.description(with: .autoupdatingCurrent))
//    }
    
//    func getWeekOFDay() {
//        let dateComponent = Calendar.current.dateComponents([
//            .calendar,
//            .month,
//            .weekday,
//            .weekOfMonth,
//            .day
//        ], from: dateNow)
//        
//        let weekOfMonthPoint = dateComponent.weekOfMonth ?? 0
//        let monthPoint = dateComponent.month ?? 0
//        
//        for i in 1..<8 {
//            let datePerWeek = DateComponents(year: 2024, month: monthPoint, weekday: i, weekOfMonth: weekOfMonthPoint)
//            let calendarPerWeek = Calendar.current.date(from: datePerWeek)
//            let dateNumber = Calendar.current.dateComponents([.day], from: calendarPerWeek ?? dateNow)
//        }
//    }
}

#Preview {
    CalendarView()
        .environmentObject(ActivityViewModel())
}

