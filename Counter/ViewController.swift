//
//  ViewController.swift
//  Counter
//
//  Created by Pavel Barto on 15.03.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var counterLabel: UILabel!
    
    @IBOutlet weak var counterButton: UIButton!
    
    var counterValue: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func buttonPressed(_ sender: Any) {
        counterValue += 1
        counterLabel.text = String(counterValue)
    }
    
}

