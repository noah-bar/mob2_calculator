//
//  ButtonType.swift
//  barberini_calculator
//
//  Created by hyil on 21.03.2024.
//

import Foundation

enum ButtonType {
    case zero
    case one
    case two
    case three
    case four
    case five
    case six
    case seven
    case eight
    case nine
    case addition
    case subtraction
    case multiplication
    case division
    case digit(_ digit: Digit)
    case operation(_ operation: ArithmeticOperation)
    case negative
    case percent
    case decimal
    case equals
    case allClear
    case clear
}
