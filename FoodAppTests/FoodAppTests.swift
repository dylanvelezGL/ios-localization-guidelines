//
//  FoodAppTests.swift
//  FoodAppTests
//
//  Created by Dylan Vélez on 11/07/21.
//

import XCTest
@testable import FoodApp

class FoodAppTests: XCTestCase {
    func testLocalization() throws {
        // This text should be localized depending on the testplan configuration
        let localizedTest = Localization.Food.hamburgerDescription
        XCTSkip()
    }
}
