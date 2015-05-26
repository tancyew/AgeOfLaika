//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by Chris Tan on 5/26/15.
//  Copyright (c) 2015 Chris Tan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var humanYearTextField: UITextField!
    @IBOutlet weak var dogConvertedYearLabel: UILabel!
    @IBOutlet weak var conversionButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dogConvertedButtonPressed(sender: UIButton) {
        
        let dogYearConstant = 7
        let dogFromHumanYear = humanYearTextField.text.toInt()!
        
        dogConvertedYearLabel.hidden = false
        humanYearTextField.resignFirstResponder()
        
        dogConvertedYearLabel.text = "Your Dog is " + "\(dogFromHumanYear * dogYearConstant)" + " years old"
        
        conversionButton.setTitle("Conversion Success", forState: UIControlState.Normal)
        conversionButton.setTitleColor(UIColor .redColor(), forState: UIControlState.Normal)
    }
    
}

