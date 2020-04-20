//
//  AnalyticsLoginRepo.swift
//  Dev_Pod
//
//  Created by Akua Afrane-Okese on 2020/03/30.
//

import Foundation
import FirebaseAnalytics

public struct AnalyticsLoginRepo {
    public static func landingPageSignUpTapped() {
        Analytics.logEvent(AnalyticsLoginRepoConstants.LandingPage.signUpButton, parameters: nil)
    }
    
    public static func landingPageLoginTapped() {
        Analytics.logEvent(AnalyticsLoginRepoConstants.LandingPage.loginButton, parameters: nil)
    }
    
    public static func loginPageLoginTapped() {
        Analytics.logEvent(AnalyticsLoginRepoConstants.LoginPage.loginButton, parameters: nil)
    }

    public static func signUpPageCreateAccountTapped() {
        Analytics.logEvent(AnalyticsLoginRepoConstants.SignUpPage.signUpButton, parameters: nil)
    }
}
