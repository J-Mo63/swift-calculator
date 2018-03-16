//
//  Operator.swift
//  calc
//
//  Created by Jonathan Moallem on 16/3/18.
//  Copyright © 2018 UTS. All rights reserved.
//

import Foundation

/*
 * A model class to represent a given Operator.
 */
class Operator {
    
    // Private class fields
    private let symbol: String
    private let precedence: Int
    private let operation: (Int, Int) -> Int
    
    
    /*
     * Operator()
     *
     * A constructor that initialises the symbol and precendence of
     * the Operator, as well as the operation function.
     */
    init(symbol: String, precedence: Int, operation: @escaping (Int, Int) -> Int) {
        self.symbol = symbol
        self.precedence = precedence
        self.operation = operation // This is a function matching (Int, Int) -> Int
    }
    
    
    /*
     * getSymbol() -> String
     *
     * A getter method that returns the Operator's symbol as a String.
     */
    func getSymbol() -> String {
        return symbol
    }
    
    
    /*
     * getPrecedence() -> Int
     *
     * A getter method that returns the Operator's precedence as an Int.
     */
    func getPrecedence() -> Int {
        return precedence
    }
    
    
    /*
     * performOperation(operandOne: Int, operandTwo: Int) -> Int
     *
     * A public method that performs the Operator's operation on two
     * supplied Int values (the operands) and returns the result.
     */
    func performOperation(operandOne: Int, operandTwo: Int) -> Int {
        return operation(operandTwo, operandOne)
    }
}
