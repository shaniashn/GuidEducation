//
//  Router.swift
//  GuidEducation
//
//  Created by Sha Nia Siahaan on 15/05/24.
//

import Foundation
import SwiftUI

enum Screen: Hashable {
    case newActive
    case guidelinesView
//    case homeView
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(0)
      }
      
      static func == (lhs: Screen, rhs: Screen) -> Bool {
        return lhs.hashValue == rhs.hashValue
      }
}

final class Router: ObservableObject {
    @Published var paths = NavigationPath()
//    @Published var paths: [Screen] = []
    
    public func addToPath(screen: Screen) {
        paths.append(screen)
    }
    
    public func pop() {
        paths.removeLast()
    }
    
    public func popToRoot() {
        paths = .init()
    }
    
}
