//
//  LoginAnimations.swift
//  Dev_Pod
//
//  Created by Akua Afrane-Okese on 2020/04/20.
//

import Foundation
import  UIKit

public class LoginAnimations {
    public static func shakeTextfield(_ textfield: UITextField) {
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.07
        animation.repeatCount = 2
        animation.autoreverses = true
        animation.fromValue = NSValue(cgPoint: CGPoint(x: textfield.center.x - 5, y: textfield.center.y))
        animation.toValue = NSValue(cgPoint: CGPoint(x: textfield.center.x + 5, y: textfield.center.y))
        textfield.layer.add(animation, forKey: "position")
    }
    
    public static func pulseButton(_ button: UIButton) {
        UIButton.animate(withDuration: 0.2,
                         animations: {
                            button.transform = CGAffineTransform(scaleX: 0.975, y: 0.96)
        },
                         completion: { _ in
                            UIButton.animate(withDuration: 0.2, animations: {
                                button.transform = CGAffineTransform.identity
                            })
        })
    }
}
