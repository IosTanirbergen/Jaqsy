//
//  OnboardingContentView.swift
//  Jaqsy
//
//  Created by Tanir&Almira on 18.10.2022.
//

import SwiftUI

struct OnboardingContentView: View {
    private var item: OnboardingModel
    
    init(item: OnboardingModel) {
        self.item = item
    }
    
    var body: some View {
        VStack {
            Image(item.image)
                .resizable()
                .frame(height: ScreenSize.width / 1.3)
                .padding(.trailing, 60.0)
            
            Text(item.title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.black)
                .padding(.top)
            
            Text(item.description)
                .foregroundColor(Color.gray)
                .multilineTextAlignment(.center)
                .lineLimit(2)
                .padding(8)
                .fixedSize(horizontal: false, vertical: true)
        }
    }
}
