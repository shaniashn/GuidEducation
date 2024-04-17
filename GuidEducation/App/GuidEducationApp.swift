//
//  GuidEducationApp.swift
//  GuidEducation
//
//  Created by Sha Nia Siahaan on 12/06/23.
//

import SwiftUI

@main
struct GuidEducationApp: App {
    @StateObject var vm = ActivityViewModel()
//    @StateObject var gvm = GuidelinesViewModel()
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(vm)
//                .environmentObject(gvm)
            
//            ReflectionView()
        }
    }
}
