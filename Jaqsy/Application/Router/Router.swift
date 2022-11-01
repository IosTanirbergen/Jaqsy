//
//  Router.swift
//  Jaqsy
//
//  Created by Tanir&Almira on 01.11.2022.
//

import SwiftUI
import NavigationBackport

final class Router: ObservableObject {
    static let shared = Router()
    
    @Published var path = [RouteEnum]()
    
    func showOnboarding() {
        path.append(.onboarding)
    }
    
    func showHome() {
        path.append(.home)
    }
    
    func popToRoot() {
        path.removeAll()
    }
    
    func popToView() {
        path.removeLast()
    }
}
