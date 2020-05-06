//
//  Wage.swift
//  Windows-Shopper
//
//  Created by Hossein Ghaedi on 05/05/2020.
//  Copyright © 2020 Hossein Ghaedi. All rights reserved.
//

import Foundation

class Wage{
    class func getHours(forWage wage: Double , andPrice price: Double) ->Int{
        return Int(ceil(price / wage))
    }
}
