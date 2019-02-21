//
//  ColorizerDelegate.swift
//  TextFieldChallenge
//
//  Created by Geek on 1/2/19.
//  Copyright © 2019 Geek. All rights reserved.
//

import Foundation
import UIKit

class ColorizerDelegate: NSObject,UITextFieldDelegate{
    let color = [UIColor.red,UIColor.blue,
                 UIColor.green,UIColor.yellow,
                 UIColor.magenta,UIColor.black,
                 UIColor.brown,UIColor.gray,
                 UIColor.cyan]
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        textField.textColor = self.pickColor()
        return true
    }
    func pickColor() -> UIColor{
        let randomIndex = Int(arc4random() % UInt32(color.count))
        return color[randomIndex]
    }
}
