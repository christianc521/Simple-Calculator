//
//  ViewController.swift
//  calculator
//
//  Created by Christian Cruz on 1/31/22.
//

import UIKit

class ViewController: UIViewController {

    
    var numbers = [""]
    var numberIndex = 0
    var total = 0

    @IBOutlet weak var sum: UILabel!
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        // any digit pressed
        if (sender.tag >= 0 && sender.tag <= 9) {
            numbers[numberIndex] += "\(sender.tag)"
            sum.text = numbers[numberIndex]
        }
        
        // + pressed
        else if (sender.tag == 10) {
            total += Int(numbers[numberIndex])!
            numberIndex += 1
            numbers.append("")
            
        }
        
        // = pressed
        else if (sender.tag == 11) {
            total += Int(numbers[numberIndex])!
            numberIndex += 1
            numbers.append("0")
            sum.text = String(total)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

