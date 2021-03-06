//
//  ViewController.swift
//  Postcard
//
//  Created by Delwin Leung on 2014-10-14.
//  Copyright (c) 2014 Delwin Leung. All rights reserved.
//test

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var senderLabel: UILabel!
    
    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var enterNameTextField: UITextField!
    
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        senderLabel.hidden = false
        senderLabel.text = enterNameTextField.text
        senderLabel.textColor = UIColor.blueColor()
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.blueColor()

        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder()

        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        mailButton.setTitle("Message Sent", forState: UIControlState())
   }

}

