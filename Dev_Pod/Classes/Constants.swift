//
//  Constants.swift
//  Dev_Pod
//
//  Created by Akua Afrane-Okese on 2020/02/28.
//

import Foundation

public struct Constants {
    public struct Storyboard {
        public static let homeViewController = "HomeViewController"
        public static  let recipeDetailViewController = "RecipeDetailViewController"
    }

    public static func isPasswordValid(_ password: String) -> Bool {
        let passwordTest = NSPredicate(format: "SELF MATCHES %@",
                                    "^(?=.*[a-z])(?=.*[$@$#!%*?&])[A-Za-z\\d$@$#!%*?&]{8,}")
        return passwordTest.evaluate(with: password)
    }
}
