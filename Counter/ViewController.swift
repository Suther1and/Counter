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
    @IBOutlet weak var minusCounterButton: UIButton!
    
    @IBOutlet weak var counterResetButton: UIButton!
    
    
    var counterValue: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func buttonPressed(_ sender: Any) {
        counterValue += 1
        counterLabel.text = String(counterValue)
    }
    
    @IBAction func minusButtonPressed(_ sender: Any) {
        if counterValue > 0{
            counterValue -= 1
            counterLabel.text = String(counterValue)
        }else{
            counterValue = 0
            counterLabel.text = String(counterValue)
        }
         
    }
    
    
    @IBAction func resetButtonPressed(_ sender: Any) {
        counterValue = 0
        counterLabel.text = String(counterValue)
    }
    
}

