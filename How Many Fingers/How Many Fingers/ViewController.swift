//
//  ViewController.swift
//  How Many Fingers
//
//  Created by Heather Fenton on 4/28/15.
//  Copyright (c) 2015 silc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textboxGuess: UITextField!
    @IBOutlet weak var labelAnswer: UILabel!
    
    @IBAction func buttonClick(sender: AnyObject) {
        var answer =  Int(arc4random_uniform(5))
        var guess = textboxGuess.text.toInt()
        var text = ""
        
        if guess <= 5 && guess != nil{
            if guess == answer {
                text = "Correct, I am holding \(answer) fingers!"
                
            } else {
                text = "Incorrect, I am holding \(answer) fingers"
            }
            labelAnswer.text =  text
            
            
        } else {
            labelAnswer.text = "Please enter a number less than or equal to 5"
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

