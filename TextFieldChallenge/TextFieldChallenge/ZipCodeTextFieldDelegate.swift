//
//  ZipCodeTextFieldDelegate.swift
//  TextFieldChallenge
//
//  Created by Geek on 1/2/19.
//  Copyright © 2019 Geek. All rights reserved.
//

import Foundation
import UIKit
class ZipCodeTextFieldDelegate: NSObject, UITextFieldDelegate{
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        var newText = textField.text! as NSString
        newText = newText.replacingCharacters(in: range, with: string) as NSString
        
        return newText.length <= 5;
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true;
    }
}
