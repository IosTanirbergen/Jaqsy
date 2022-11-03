//
//  HomeAssembly.swift
//  Jaqsy
//
//  Created by Tanir&Almira on 03.11.2022.
//

import SwiftUI

final class HomeAssembly {
    func build() -> HomeView {
        let viewModel = HomeViewModel()
        let router = Router()
        
        return HomeView(homeViewModel: viewModel, router: router)
    }
}
