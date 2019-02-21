//
//  ViewController.swift
//  TextFieldChallenge
//
//  Created by Geek on 1/2/19.
//  Copyright © 2019 Geek. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    let zipCodeDelegate = ZipCodeTextFieldDelegate()
    let cashCodeDelegate = CashCodeTextFieldDelegate()
    let colorizerDelegate = ColorizerDelegate()
    
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var textField4: UITextField!
    @IBOutlet weak var switchButton: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.textField4.delegate = self.colorizerDelegate
        self.textField3.delegate = self
        self.textField2.delegate = self.cashCodeDelegate
        self.textField1.delegate = self.zipCodeDelegate
        self.switchButton.setOn(false, animated: false)
    }
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool{
        return self.switchButton!.isOn
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        textField.resignFirstResponder()
        return true
    }
    @IBAction func toggleTextEditor(_ sender: AnyObject){
        if !(sender as! UISwitch).isOn {
            self.textField3.resignFirstResponder()
        }
    }

}

