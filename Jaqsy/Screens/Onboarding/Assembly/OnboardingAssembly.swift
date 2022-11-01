//
//  OnboardingAssembly.swift
//  Jaqsy
//
//  Created by Tanir&Almira on 01.11.2022.
//

import Foundation

final class OnboardingAssembly {
    func build() -> OnboardingView {
        let router = Router.shared
        let viewModel = OnboardingViewModel()
        
        return OnboardingView(viewModel: viewModel, router: router)
    }
}


