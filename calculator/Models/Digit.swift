//
//  Digit.swift
//  barberini_calculator
//
//  Created by noah on 21.03.2024.
//

import Foundation
enum Digit: Int, CaseIterable, CustomStringConvertible {
    case zero, one, two, three, four, five, six, seven, eight, nine
    var description: String {
        "\(rawValue)"
    }
}
