//
//  ViewController.swift
//  Dev_Pod
//
//  Created by AkuaQ on 02/25/2020.
//  Copyright (c) 2020 AkuaQ. All rights reserved.
//

import UIKit
import Dev_Pod
class ViewController: UIViewController {
    @IBOutlet weak var buttonOne: UIButton!
    @IBOutlet weak var buttonTwo: UIButton!
    @IBOutlet weak var textFieldOne: UITextField!
    @IBOutlet weak var textFieldTwo: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpElements()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func setUpElements() {
        //Style the elements
        Utilities.styleFilledButton(buttonOne)
        Utilities.styleHollowButton(buttonTwo)
        Utilities.styleTextField(textFieldOne)
        Utilities.styleErrorTextField(textFieldTwo)
    }
}
