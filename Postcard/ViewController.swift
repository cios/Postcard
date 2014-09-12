//
//  ViewController.swift
//  Postcard
//
//  Created by Daniel Esquivias on 9/11/14.
//  Copyright (c) 2014 Complete iOS 8 with Swift. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterAMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func mailButtonTouchUpInside(sender: UIButton) {
        // Code will evaluate when we touch up inside the button
        
        messageLabel.hidden = false
        messageLabel.text = enterAMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        
        enterAMessageTextField.text = ""
        enterAMessageTextField.resignFirstResponder() // Hide the keyboard from enterAMessage
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)

    }

}

