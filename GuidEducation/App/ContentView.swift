//
//  ContentView.swift
//  GuidEducation
//
//  Created by Sha Nia Siahaan on 12/06/23.
//

import SwiftUI

struct ContentView: View {
//    @StateObject var router = Router()
//    @StateObject var vm = ActivityViewModel()
    @EnvironmentObject var router: Router
    var body: some View {
//        WindowGroup {
//        NavigationStack(path: $router.paths) {
//                HomeView()
//                    .navigationDestination(for: Screen.self) { screen in
//                        switch (screen) {
//                        case .newActive:
//                            NewActive()
//                        case .homeView:
//                            HomeView()
//                        }
//                    }
//                    
//            }
//            .environmentObject(router)
//            .environmentObject(vm)
//            
//        }
        VStack {
            Text("helo")
            Button(action: {
                router.addToPath(screen: .newActive)
            }, label: {
                Text("Button")
            })
        }
    }
}
