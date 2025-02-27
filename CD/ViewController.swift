//
//  ViewController.swift
//  CD
//
//  Created by apple on 30.11.2023.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // Basic arithmetic functions
    
    /// Adds two numbers
    /// - Parameters:
    ///   - a: First number
    ///   - b: Second number
    /// - Returns: Sum of the two numbers
    func add(_ a: Double, _ b: Double) -> Double {
        return a + b
    }
    
    /// Subtracts the second number from the first
    /// - Parameters:
    ///   - a: First number
    ///   - b: Second number
    /// - Returns: Difference between the two numbers
    func subtract(_ a: Double, _ b: Double) -> Double {
        return a - b
    }
    
    /// Multiplies two numbers
    /// - Parameters:
    ///   - a: First number
    ///   - b: Second number
    /// - Returns: Product of the two numbers
    func multiply(_ a: Double, _ b: Double) -> Double {
        return a * b
    }
    
    /// Divides the first number by the second
    /// - Parameters:
    ///   - a: First number (dividend)
    ///   - b: Second number (divisor)
    /// - Returns: Quotient of the division
    /// - Throws: ArithmeticError.divisionByZero if the divisor is zero
    func divide(_ a: Double, _ b: Double) throws -> Double {
        if b == 0 {
            throw ArithmeticError.divisionByZero
        }
        return a / b
    }
}

// Custom error for division by zero
enum ArithmeticError: Error {
    case divisionByZero
}
