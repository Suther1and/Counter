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
    @IBOutlet weak var practicumImageView: UIImageView!
    
    @IBOutlet weak var counterLabel: UILabel!
    
    @IBOutlet weak var counterButton: UIButton!
    
    @IBOutlet weak var minusCounterButton: UIButton!
    
    @IBOutlet weak var counterResetButton: UIButton!
    
    @IBOutlet weak var counterTextField: UITextView!
    
    var counterValue: Int = 0
     
    func scrollToLast() {
        let range = NSMakeRange(counterTextField.text.count - 1, 0)
        counterTextField.scrollRangeToVisible(range)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        counterLabel.text = "Значение счётчика: \(String(counterValue))"
        practicumImageView.layer.cornerRadius = 30
         
         
    
    }

    @IBAction func buttonPressed(_ sender: Any) {
        counterValue += 1
        counterLabel.text = "Значение счётчика: \(String(counterValue))"
        counterTextField.text += "\n\(printDate())   Значение изменено на +1"
        scrollToLast()
        
    }
    
    @IBAction func minusButtonPressed(_ sender: Any) {
        if counterValue > 0{
            counterValue -= 1
            counterLabel.text = "Значение счётчика: \(String(counterValue))"
            counterTextField.text += "\n\(printDate())   Значение изменено на -1"
            scrollToLast()
        }else{
            counterValue = 0
            counterLabel.text = "Значение счётчика: \(String(counterValue))"
            counterTextField.text += "\n\(printDate())   Попытка уменьшить значение ниже нуля"
            scrollToLast()
        }
         
    }
    
    
    @IBAction func resetButtonPressed(_ sender: Any) {
        counterValue = 0
        counterLabel.text = "Значение счётчика: \(String(counterValue))"
        counterTextField.text += "\n\(printDate())   Значение сброшено"
        scrollToLast()
    }
    
}

