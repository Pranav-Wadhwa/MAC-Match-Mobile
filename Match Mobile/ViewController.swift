//
//  ViewController.swift
//  Match Mobile
//
//  Created by Pranav Wadhwa on 10/31/18.
//  Copyright © 2018 Pranav Wadhwa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    
    var selectedButton: UIButton?
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        if selectedButton == nil {
            sender.alpha = 0.65
            sender.isUserInteractionEnabled = false
            selectedButton = sender
        } else {
            if sender.image(for: []) == selectedButton!.image(for: []) {
                sender.alpha = 0
                sender.isUserInteractionEnabled = false
                selectedButton!.alpha = 0
                selectedButton!.isUserInteractionEnabled = false
            } else {
                sender.alpha = 1
                sender.isUserInteractionEnabled = true
                selectedButton!.alpha = 1
                selectedButton!.isUserInteractionEnabled = true
            }
            selectedButton = nil
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

