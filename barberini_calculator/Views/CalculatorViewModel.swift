//
//  CalculatorViewModel.swift
//  barberini_calculator
//
//  Created by noah on 21.03.2024.
//

import Foundation
import Combine

extension CalculatorView {
    final class ViewModel: ObservableObject {
        
        @Published private var calculator = Calculator()
        
        var displayText: String {
            return calculator.displayText
        }
        
        var buttonTypes: [[ButtonType]] {
            [
                [.allClear, .negative, .percent, .operation(.division)],
                [.digit(.seven), .digit(.eight), .digit(.nine), .operation(.multiplication)],
                [.digit(.four), .digit(.five), .digit(.six), .operation(.subtraction)],
                [.digit(.one), .digit(.two), .digit(.three), .operation(.addition)],
                [.digit(.zero), .decimal, .equals]
            ]
        }
        
        func performAction(for buttonType: ButtonType) {
            switch buttonType {
                case .digit(let digit):
                    calculator.setDigit(digit)
                case .operation(let operation):
                    calculator.setOperation(operation)
                case .negative:
                    calculator.toggleSign()
                case .percent:
                    calculator.setPercent()
                case .decimal:
                    calculator.setDecimal()
                case .equals:
                    calculator.evaluate()
                case .allClear:
                    calculator.allClear()
                case .clear:
                    calculator.clear()
            }
        }
    }
}
