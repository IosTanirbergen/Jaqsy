//
//  Home.swift
//  Jaqsy
//
//  Created by Tanir&Almira on 26.10.2022.
//

import SwiftUI

struct HomeView: View {
    var homeViewModel: HomeViewModel
    var router: Router
    
    var body: some View {
        ZStack {
             
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        HomeAssembly().build()
    }
}
