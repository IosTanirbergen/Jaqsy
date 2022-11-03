//
//  ContentView.swift
//  Jaqsy
//
//  Created by Tanir&Almira on 16.10.2022.
//

import SwiftUI

struct OnboardingView: View {
    var viewModel: OnboardingViewModel
    var router: Router
    
    @State var selectedIndex: Int = 0
    @State var progress: CGFloat = 0
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button(action: {}) {
                    Text("Skip")
                        .foregroundColor(Color.black)
                        .padding(.trailing, 20)
                }
                .disabled(viewModel.skipButtonDisabled(selectedIndex))
            }
            
            TabView(selection: $selectedIndex) {
                ForEach(0..<viewModel.getOnboardingItemCount()) { index in
                    OnboardingContentView(item: viewModel.getOnboardingItems()[index])
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .onChange(of: selectedIndex, perform: { value in
                updateProgress()
            })
            .frame(height: ScreenSize.height / 1.5)
            
            Button(action: {
                if selectedIndex < viewModel.getOnboardingItemCount() - 1 {
                    withAnimation {
                        selectedIndex = selectedIndex + 1
                    }

                    return
                }

                router.showHome()
            }, label: {
                CircularProgressView(progress: $progress)
            })
            .padding(.bottom, 16.0)
        }
        .navigationBarTitleDisplayMode(.inline)
        .onAppear() {
            updateProgress()
        }
        .onDisappear() {
            AppState().isHideOnboardingFlow = true
        }
    }
    
    private func updateProgress() {
        withAnimation {
            progress = CGFloat(selectedIndex + 1) / CGFloat(viewModel.getOnboardingItemCount())
        }
    }
}


struct OnboardingPreview_Provider: PreviewProvider {
    static var previews: some View {
        OnboardingAssembly().build()
    }
}
