//
//  OnboardingViewModel.swift
//  Jaqsy
//
//  Created by Tanir&Almira on 18.10.2022.
//

import SwiftUI

final class OnboardingViewModel {
    private let onboardingItem: [OnboardingModel] = [
        .init(
            image: "onboarding.first",
            title: "Lorem Ipsum",
            description: "Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit."
        ),
        .init(
            image: "onboarding.first",
            title: "Lorem Ipsum",
            description: "Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit."
        ),
        .init(
            image: "onboarding.first",
            title: "Lorem Ipsum",
            description: "Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit."
        )
    ]
    
    func getOnboardingItems() -> [OnboardingModel] {
        return onboardingItem
    }
    
    func getOnboardingItemCount() -> Int {
        return onboardingItem.count
    }
    
    func skipButtonDisabled(_ selectedIndex: Int) -> Bool {
        return selectedIndex == getOnboardingItemCount() - 1
    }
}
