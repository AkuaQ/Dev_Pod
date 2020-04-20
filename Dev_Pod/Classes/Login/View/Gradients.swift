//
//  Gradients.swift
//  Dev_Pod
//
//  Created by Akua Afrane-Okese on 2020/04/20.
//

import Foundation
class Gradient: UIView {

    public override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }

    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }

    public func setupView() {
        autoresizingMask = [.flexibleWidth, .flexibleHeight]

        guard let theLayer = self.layer as? CAGradientLayer else {
            return
        }

        theLayer.colors = [UIColor.white.cgColor, UIColor(red: 216/255,
        green: 216/255,
        blue: 216/255, alpha: 1).cgColor]
        theLayer.locations = [0.0, 1.0]
        theLayer.frame = self.bounds
    }

    override class var layerClass: AnyClass {
        return CAGradientLayer.self
    }
}
