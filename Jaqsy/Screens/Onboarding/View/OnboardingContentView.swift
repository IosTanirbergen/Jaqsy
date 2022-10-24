//
//  OnboardingContentView.swift
//  Jaqsy
//
//  Created by Tanir&Almira on 18.10.2022.
//

import SwiftUI

struct OnboardingContentView: View {
    private var item: OnboardingModel
    private var imageSize = UIScreen.main.bounds.size.width / 1.2
    
    init(item: OnboardingModel) {
        self.item = item
    }
    
    var body: some View {
        VStack {
            Spacer()
            
            Image(item.image)
                .resizable()
                .frame(height: imageSize)
                .padding(.trailing, 60.0)
            
            Spacer(minLength: 16)
            
            VStack {
                Text(item.title)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    .padding(.top)
                Text(item.description)
                    .foregroundColor(Color.gray)
                    .multilineTextAlignment(.center)
                    .lineLimit(2)
                    .padding(10)
                    .padding(.top, 8)
                    .fixedSize(horizontal: false, vertical: true)
            }
        }
    }
}
