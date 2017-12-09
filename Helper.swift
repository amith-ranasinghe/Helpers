//
//  Helper.swift
//  CustomerTruckBooking
//
//  Created by http://amith.me.uk on 11/26/17.
//  Copyright © 2017 Amith Ranasinghe. All rights reserved.
//

import UIKit

class Helper: NSObject {
    
    class func validateTextField(textField: UITextField) -> Bool {
        if textField.text == nil || textField.text == "" {
            return false
        }
        return true
    }
    
    class func showAlert(_ title: String,
                         message: String ,
                         buttonTitles: String ..., viewController: UIViewController,
                         completion: @escaping (Int) -> Void) {
        
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        for (buttonIndex, buttonTitle) in buttonTitles.enumerated() {
            let action = UIAlertAction(title: buttonTitle, style: .default, handler: { (action) in
                completion(buttonIndex)
            })
            alertController.addAction(action)
        }
        viewController.present(alertController, animated: true, completion: nil)
    }
    
    
    class func showActionSheet(_ title: String,
                               message: String,
                               buttonTitles: String ..., viewController: UIViewController,
                               completion: @escaping (Int) -> Void) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .actionSheet)
        for (buttonIndex, buttonTitle) in buttonTitles.enumerated() {
            let action  = UIAlertAction(title: buttonTitle, style: .default, handler: { (action) in
                completion(buttonIndex)
            })
            alertController.addAction(action)
        }
        viewController.present(alertController, animated: true, completion: nil)
    }
    
}
