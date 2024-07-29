//
//  GuidEducationApp.swift
//  GuidEducation
//
//  Created by Sha Nia Siahaan on 12/06/23.
//

import SwiftUI

@main
struct GuidEducationApp: App {
    @StateObject var router = Router()
    @StateObject var vm = ActivityViewModel()
    var manager = ActivityManager()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $router.paths) {
//                ListGuidelinesView()
                HomeView()
                    .navigationDestination(for: Screen.self) { screen in
                        switch(screen) {
                        case .newActive:
                            NewActive()
//                            NewActivityView()
//                        case .homeView:
//                            HomeView()
                        case .guidelinesView:
                            ListGuidelinesView()
                        }
                    }
                    
            }
            .environmentObject(router)
            .environmentObject(vm)
            .environment(\.managedObjectContext, manager.context)
        }
    }
}
