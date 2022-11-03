//
//  CircularProgressView.swift
//  Jaqsy
//
//  Created by Tanir&Almira on 19.10.2022.
//

import SwiftUI

struct CircularProgressView: View {
    @Binding var progress: CGFloat
    
    var body: some View {
        Image(systemName: "arrow.right")
            .font(.system(size: 26.0))
            .foregroundColor(Color.white)
            .frame(width: ScreenSize.width / 7.4, height: ScreenSize.width / 7.4)
            .background(Color.blue)
            .clipShape(Circle())
            .padding()
            .background(Circle().strokeBorder(Color.gray.opacity(0.3), lineWidth: 2.0))
            .background(Circle().trim(from: 0, to: self.progress).stroke(Color.blue, lineWidth: 4.0).rotationEffect(.degrees(-90)))
    }
}
