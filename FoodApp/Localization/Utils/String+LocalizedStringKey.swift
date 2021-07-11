//
//  String+LocalizedStringKey.swift
//  FoodApp
//
//  Created by Dylan Vélez on 11/07/21.
//

import Foundation
import SwiftUI

extension String {
    var localizedStringKey: LocalizedStringKey {
        return LocalizedStringKey(self)
    }
}
