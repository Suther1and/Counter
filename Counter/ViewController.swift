//
//  ViewController.swift
//  Counter
//
//  Created by Pavel Barto on 15.03.2024.
//

import UIKit
import Foundation


func printDate() -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "dd.MM - HH:mm:ss"
    let currentDateString = dateFormatter.string(from: Date())
    return currentDateString
}
 
 

class ViewController: UIViewController {
    @IBOutlet weak var counterLabel: UILabel!
    
    @IBOutlet weak var counterButton: UIButton!
    @IBOutlet weak var minusCounterButton: UIButton!
    
    @IBOutlet weak var counterResetButton: UIButton!
    
    @IBOutlet weak var counterTextField: UITextView!
    
    var counterValue: Int = 0
     
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        counterTextField.text = "История изменений"
        counterLabel.text = "Значение счётчика: \(String(counterValue))"
    
    }

    @IBAction func buttonPressed(_ sender: Any) {
        counterValue += 1
        counterLabel.text = "Значение счётчика: \(String(counterValue))"
        counterTextField.text = "\(printDate()) \nЗначение изменено на +1"
    }
    
    @IBAction func minusButtonPressed(_ sender: Any) {
        if counterValue > 0{
            counterValue -= 1
            counterLabel.text = "Значение счётчика: \(String(counterValue))"
            counterTextField.text = "\(printDate()) \nЗначение изменено на -1"
        }else{
            counterValue = 0
            counterLabel.text = "Значение счётчика: \(String(counterValue))"
            counterTextField.text = "\(printDate()) \nПопытка уменьшить значение ниже нуля"
        }
         
    }
    
    
    @IBAction func resetButtonPressed(_ sender: Any) {
        counterValue = 0
        counterLabel.text = "Значение счётчика: \(String(counterValue))"
        counterTextField.text = "\(printDate()) \nЗначение сброшено"
    }
    
}

