//
//  ViewController.swift
//  calculator
//
//  Created by Christian Cruz on 1/31/22.
//

import UIKit

class ViewController: UIViewController {

    var total = 0
    @IBOutlet weak var sum: UILabel!
    @IBAction func buttonPressed(_ sender: UIButton) {
        if (sender.tag >= 1 || sender.tag <= 9) {
            sum.text = "\(sender.tag)"
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

