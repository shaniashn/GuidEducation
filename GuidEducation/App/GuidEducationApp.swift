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
    
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $router.paths) {
                HomeView()
                    .navigationDestination(for: Screen.self) { screen in
                        switch(screen) {
                        case .newActive:
                            NewActive()
//                        case .homeView:
//                            HomeView()
                        }
                    }
            }
            .environmentObject(router)
            .environmentObject(vm)
        }
    }
}
