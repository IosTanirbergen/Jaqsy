//
//  OnboardingViewModel.swift
//  Jaqsy
//
//  Created by Tanir&Almira on 18.10.2022.
//

import SwiftUI

protocol OnboardingViewModelOutput {
    func getOnboardingItems() -> [OnboardingModel]
    func getOnboardingItemCount() -> Int
    func skipButtonDisabled(_ selectedIndex: Int) -> Bool
}

final class OnboardingViewModel: OnboardingViewModelOutput {
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
    
    @State var showHomeIfNeeded: Bool {
        didSet {
            showHomeIfNeeded = getOnboardingItemCount() == 3
        }
    }
    
    func getOnboardingItems() -> [OnboardingModel] {
        return onboardingItem
    }
    
    func getOnboardingItemCount() -> Int {
        return onboardingItem.count
    }
    
    func skipButtonDisabled(_ selectedIndex: Int) -> Bool {
        return selectedIndex == getOnboardingItemCount() - 1
    }
    
    init(showHomeIfNeeded: Bool = false) {
        self.showHomeIfNeeded = showHomeIfNeeded
    }
}
