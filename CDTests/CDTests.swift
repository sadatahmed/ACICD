//
//  CDTests.swift
//  CDTests
//
//  Created by apple on 30.11.2023.
//

import XCTest
@testable import CD

class ArithmeticTests: XCTestCase {
    
    var viewController: ViewController!
    
    override func setUp() {
        super.setUp()
        viewController = ViewController()
    }
    
    override func tearDown() {
        viewController = nil
        super.tearDown()
    }
    
    func testAddition() {
        // Test positive numbers
        XCTAssertEqual(viewController.add(5, 3), 8, "5 + 3 should equal 8")
        
        // Test negative numbers
        XCTAssertEqual(viewController.add(-5, -3), -8, "-5 + -3 should equal -8")
        
        // Test mixed positive and negative
        XCTAssertEqual(viewController.add(5, -3), 2, "5 + -3 should equal 2")
        
        // Test decimal numbers
        XCTAssertEqual(viewController.add(2.5, 3.5), 6.0, "2.5 + 3.5 should equal 6.0")
        
        // Test zero
        XCTAssertEqual(viewController.add(0, 5), 5, "0 + 5 should equal 5")
    }
    
    func testSubtraction() {
        // Test positive numbers
        XCTAssertEqual(viewController.subtract(5, 3), 2, "5 - 3 should equal 2")
        
        // Test negative numbers
        XCTAssertEqual(viewController.subtract(-5, -3), -2, "-5 - -3 should equal -2")
        
        // Test mixed positive and negative
        XCTAssertEqual(viewController.subtract(5, -3), 8, "5 - -3 should equal 8")
        
        // Test decimal numbers
        XCTAssertEqual(viewController.subtract(5.5, 3.3), 2.2, accuracy: 0.001, "5.5 - 3.3 should equal 2.2")
        
        // Test zero
        XCTAssertEqual(viewController.subtract(5, 5), 0, "5 - 5 should equal 0")
    }
    
    func testSubtractionDummy() {
        XCTAssertEqual(viewController.subtract(5, 3), 8, "5 - -3 should equal 8")
    }
    
    func testMultiplication() {
        // Test positive numbers
        XCTAssertEqual(viewController.multiply(5, 3), 15, "5 * 3 should equal 15")
        
        // Test negative numbers
        XCTAssertEqual(viewController.multiply(-5, -3), 15, "-5 * -3 should equal 15")
        
        // Test mixed positive and negative
        XCTAssertEqual(viewController.multiply(5, -3), -15, "5 * -3 should equal -15")
        
        // Test decimal numbers
        XCTAssertEqual(viewController.multiply(2.5, 2.0), 5.0, "2.5 * 2.0 should equal 5.0")
        
        // Test zero
        XCTAssertEqual(viewController.multiply(5, 0), 0, "5 * 0 should equal 0")
    }
    
    func testDivision() {
        // Test positive numbers
        XCTAssertNoThrow(try viewController.divide(6, 3), "6 / 3 should not throw an error")
        XCTAssertEqual(try? viewController.divide(6, 3), 2, "6 / 3 should equal 2")
        
        // Test negative numbers
        XCTAssertEqual(try? viewController.divide(-6, -3), 2, "-6 / -3 should equal 2")
        
        // Test mixed positive and negative
        XCTAssertEqual(try? viewController.divide(6, -3), -2, "6 / -3 should equal -2")
        
        // Test decimal numbers
        XCTAssertEqual(try? viewController.divide(5.0, 2.0), 2.5, "5.0 / 2.0 should equal 2.5")
        
        // Test division by zero
        XCTAssertThrowsError(try viewController.divide(5, 0), "Division by zero should throw an error") { error in
            XCTAssertEqual(error as? ArithmeticError, ArithmeticError.divisionByZero)
        }
    }
}
