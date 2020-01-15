//
//  ViewController.swift
//  TIppy
//
//  Created by Sam on 9/30/19.
//  Copyright © 2019 tarrGames(). All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billTextView: UITextField!
    
    @IBOutlet weak var percentTextView: UITextField!
   
    @IBOutlet weak var tipTextView: UILabel!
    
    @IBOutlet weak var totalAmountTextView: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func calculate(_ sender: Any) {
        let bill = Double(billTextView.text ?? "0") ?? 0
        let percentage = Double(percentTextView.text ?? "0") ?? 0
        
        let tip = bill * percentage / 100
        let total = bill + tip
        
        tipTextView.text = "$\(tip)"
        totalAmountTextView.text = "$\(total)"
        
        
    }
    

}

