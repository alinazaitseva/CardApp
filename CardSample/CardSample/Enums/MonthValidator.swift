// 
//  MonthValidator.swift
//  CardSample
//
//  Created by Alina Zaitseva on 8/16/18.
//  Copyright © 2018 Alina Zaitseva. All rights reserved.
//

import Foundation

class MonthValidator {
    var string: String
    var firstNumber: Int {
        let first = string.first!
        return Int(String(first))!
    }
    var secondNumber: Int {
        let second = string.last!
        return Int(String(second))!
    }
    
    init(_ dateString: String) {
        self.string = dateString
    }
    
    enum MonthsFirstCharacterType: Int {
        case zero, one
        
        func isSecondValid(second: Int) -> Bool {
            switch self {
            case .zero:
                if second == 0 { return false }
            case .one:
                if second > 2 { return false }
            }
            return true
        }
    }
    
    var isValid: Bool {
        guard let firstMonthNumber = MonthsFirstCharacterType(rawValue: firstNumber) else { return false }
        return firstMonthNumber.isSecondValid(second: secondNumber)
    }
}

