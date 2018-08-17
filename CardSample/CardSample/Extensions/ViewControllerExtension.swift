// 
//  ViewControllerExtension.swift
//  CardSample
//
//  Created by Alina Zaitseva on 8/16/18.
//  Copyright © 2018 Alina Zaitseva. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default))
        
        present(alert, animated: true, completion: nil)
    }
}

extension UITextField {
    func setBorderColor (color: UIColor) {
        self.layer.borderWidth = 1
        self.layer.cornerRadius = 5
        self.layer.borderColor = color.cgColor
    }
}
