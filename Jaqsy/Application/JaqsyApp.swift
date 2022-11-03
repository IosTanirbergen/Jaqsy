//
//  JaqsyApp.swift
//  Jaqsy
//
//  Created by Tanir&Almira on 16.10.2022.
//

import SwiftUI
import NavigationBackport

@main
struct JaqsyApp: App {
    @ObservedObject var router = Router.shared
    
    var body: some Scene {
        WindowGroup {
            NBNavigationStack(path: $router.path) {
                LaunchStateView()
                    .nbNavigationDestination(for: RouteEnum.self) { route in
                        switch route {
                        case .onboarding:
                            OnboardingAssembly().build()
                        case .home:
                            HomeAssembly().build()
                                .navigationBarBackButtonHidden()
                        }
                    }
            }
        }
    }
}
