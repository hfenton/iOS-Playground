//
//  ViewController.swift
//  Cat Years
//
//  Created by Heather Fenton on 4/26/15.
//  Copyright (c) 2015 silc-games. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textboxYears: UITextField!
    @IBOutlet weak var labelCatAge: UILabel!
    @IBAction func buttonClick(sender: AnyObject) {
        var enteredAge = textboxYears.text.toInt()
        if enteredAge == nil {
            labelCatAge.text = "Please enter your cats age"
        }
        else {
            var result = enteredAge! * 7
            println("The entered age is: " + textboxYears.text)
            println(result)
            labelCatAge.text = "Your cat is \(result) in cat years"
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

