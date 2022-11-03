//
//  UserDefaults.swift
//  Jaqsy
//
//  Created by Tanir&Almira on 03.11.2022.
//

import Foundation

final class AppState {
    private enum UserdefaultKeys: String {
        case isShowedOnboardingFlow
    }
    
    var isHideOnboardingFlow: Bool {
        get {
            let newValue = UserDefaults.standard.value(forKey: UserdefaultKeys.isShowedOnboardingFlow.rawValue) as? Bool
            return newValue ?? false
        }
        
        set {
            UserDefaults.standard.setValue(newValue, forKey: UserdefaultKeys.isShowedOnboardingFlow.rawValue)
        }
    }
}
