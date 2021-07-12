//
//  String+Pluralized.swift
//  FoodApp
//
//  Created by Dylan Vélez on 12/07/21.
//

import Foundation

extension String {
    func pluralized(number: Int) -> String {
        return String(format: self, number)
    }
}
