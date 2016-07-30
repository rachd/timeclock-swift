//
//  TimeTests.swift
//  TimeClock
//
//  Created by Rachel Dorn on 7/29/16.
//  Copyright © 2016 RachelDorn. All rights reserved.
//

import XCTest
@testable import TimeClock

class TimeTests: XCTestCase {
    
    let time = Time()

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testAddMinute() {
        time.minute = 1
        let result = time.addMinute()
        XCTAssertEqual(result, 2)
    }
    
    func testAddHour() {
        time.hour = 1
        let result = time.addHour()
        XCTAssertEqual(result, 2)
    }
    
    func rollOverMinute() {
        time.minute = 59
        let result = time.addMinute()
        XCTAssertEqual(result, 0)
    }
    
    func rollOverHour() {
        time.hour = 12
        let result = time.addHour()
        XCTAssertEqual(result, 1)
    }

}
