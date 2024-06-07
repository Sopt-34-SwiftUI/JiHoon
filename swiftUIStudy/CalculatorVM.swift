//
//  CalculatorVIewModel.swift
//  swiftUIStudy
//
//  Created by 이지훈 on 6/7/24.
//

import Foundation

class CalculatorViewModel: ObservableObject {
    @Published var displayText: String = "0"
    private var currentInput: String = ""
    private var previousInput: String = ""
    private var operation: String = ""

    func buttonTapped(_ value: String) {
        switch value {
        case "C":
            clear()
        case "+/-":
            toggleSign()
        case "%":
            applyPercentage()
        case "÷", "x", "-", "+":
            setOperation(value)
        case "=":
            calculateResult()
        default:
            appendNumber(value)
        }
    }

    private func clear() {
        displayText = "0"
        currentInput = ""
        previousInput = ""
        operation = ""
    }

    private func toggleSign() {
        if !currentInput.isEmpty {
            if currentInput.hasPrefix("-") {
                currentInput.removeFirst()
            } else {
                currentInput = "-" + currentInput
            }
            displayText = currentInput
        }
    }

    private func applyPercentage() {
        if let value = Double(currentInput) {
            currentInput = String(value / 100)
            displayText = currentInput
        }
    }

    private func setOperation(_ op: String) {
        if !currentInput.isEmpty {
            previousInput = currentInput
            currentInput = ""
            operation = op
        }
    }

    private func calculateResult() {
        guard let prevValue = Double(previousInput),
              let currValue = Double(currentInput) else { return }
        
        var result: Double = 0.0
        switch operation {
        case "+":
            result = prevValue + currValue
        case "-":
            result = prevValue - currValue
        case "x":
            result = prevValue * currValue
        case "÷":
            result = prevValue / currValue
        default:
            break
        }
        
        displayText = String(result)
        currentInput = displayText
        previousInput = ""
        operation = ""
    }

    private func appendNumber(_ number: String) {
        if currentInput == "0" || currentInput.isEmpty {
            currentInput = number
        } else {
            currentInput += number
        }
        displayText = currentInput
    }
}
