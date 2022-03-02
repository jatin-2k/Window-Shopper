//
//  Wage.swift
//  Window-Shopper
//
//  Created by Jatin Agrawal on 02/03/22.
//

import Foundation

class Wage{
    class func calc(forWage wage: Double, andPrice price: Double) -> Int{
        return Int(ceil(price/wage))
    }
}
