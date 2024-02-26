//
//  ViewController.swift
//  Counter
//
//  Created by Олег Зуев on 26.02.2024.
//

import UIKit

class ViewController: UIViewController {
  

    private var count: Int = 0
    @IBAction func minusButton(_ sender: Any) {
        if count != 0 {
            count -= 1
            counterLabel.text = "Значение счётчика: \(count)"
            historyOfChanges.text += "\n \(Date().formatted(date: .numeric, time: .shortened)): значение изменено на -1"
        } else {
            historyOfChanges.text += "\n \(Date().formatted(date: .numeric, time: .shortened)): попытка уменьшить значение счётчика ниже 0"
        }
    }
    
    @IBAction func plusButton(_ sender: Any) {
        count += 1
        counterLabel.text = "Значение счётчика: \(count)"
        historyOfChanges.text += "\n \(Date().formatted(date: .numeric, time: .shortened)): значение изменено на +1"
    }
    
    @IBAction func resetButton(_ sender: Any) {
        count = 0
        counterLabel.text = "Значение счётчика: \(count)"
        historyOfChanges.text += "\n \(Date().formatted(date: .numeric, time: .shortened)): значение сброшено"
    }
    
    @IBOutlet weak var historyOfChanges: UITextView!
    @IBOutlet weak var counterLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        historyOfChanges.text = "История изменений:"
        counterLabel.text = "Значение счётчика: \(count)"
        
       
        
        
    }


}

