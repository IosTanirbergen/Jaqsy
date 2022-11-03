//
//  LaunchStateView.swift
//  Jaqsy
//
//  Created by Tanir&Almira on 03.11.2022.
//

import SwiftUI

enum LaunchState {
    case onboarding
    case home
}

struct LaunchStateView: View {
    var body: some View {
        switch launchConfiguration() {
        case .home:
            HomeAssembly().build()
        case .onboarding:
            OnboardingAssembly().build()
        }
    }
}

private func launchConfiguration() -> LaunchState {
    let isShowedOnboarding = AppState().isHideOnboardingFlow
    
    if isShowedOnboarding {
        return LaunchState.home
    } else {
        return LaunchState.onboarding
    }
}
