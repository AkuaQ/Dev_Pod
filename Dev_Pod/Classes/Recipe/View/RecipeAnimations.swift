//
//  RecipeAnimations.swift
//  Dev_Pod
//
//  Created by Akua Afrane-Okese on 2020/04/20.
//

import Foundation
import  UIKit

public class RecipeAnimations {
    public static func fadeLabel(_ label: UILabel) {
        UIView.animate(withDuration: 1,
                       delay: 1,
                       usingSpringWithDamping: 0.5,
                       initialSpringVelocity: 5,
                       options: .curveEaseInOut, animations: {
                        label.alpha = 0
        })
    }
}
