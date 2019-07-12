//
//  Wage.swift
//  window-shopper
//
//  Created by Jake Ojero on 2019-07-11.
//  Copyright © 2019 jakeojero.me. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}
