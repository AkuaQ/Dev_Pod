//
//  Utilities.swift
//  Dev_Pod
//
//  Created by Akua Afrane-Okese on 2020/02/28.
//

import Foundation
import UIKit

public class Utilities {
    public static func styleTextField(_ textfield: UITextField) {
        // Remove border on text field
        textfield.layer.borderWidth = 1
        textfield.layer.borderColor = UIColor.init(red: 200/255, green: 135/255, blue: 215/255, alpha: 1).cgColor
        textfield.layer.cornerRadius = 6
    }

    public static func styleFilledButton(_ button: UIButton) {
        // Filled rounded corner style
        button.layer.cornerRadius = 6
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOffset = CGSize(width: 5, height: 5)
        button.layer.shadowRadius = 5
        button.layer.shadowOpacity = 0.25
    }

    public static func styleHollowButton(_ button: UIButton) {
        // Hollow rounded corner style
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.init(red: 200/255, green: 135/255, blue: 215/255, alpha: 1).cgColor
        button.layer.cornerRadius = 6
    }

    public static func styleErrorTextField(_ textfield: UITextField) {
        // Hollow rounded corner style
        textfield.layer.borderWidth = 1
        textfield.layer.borderColor = UIColor.red.cgColor
        textfield.layer.cornerRadius = 6
    }

    public static func styleBackgroundView(_ view: UIView) {
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOffset = CGSize(width: 2, height: 2)
        view.layer.shadowRadius = 19
        view.layer.shadowOpacity = 0.5
    }

    public static func styleBackgroundCardView(_ view: UIView) {
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOffset = CGSize(width: 2, height: 2)
        view.layer.shadowRadius = 3
        view.layer.shadowOpacity = 0.7
    }
    public init() {}
}
