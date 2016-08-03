//
//  Time.swift
//  TimeClock
//
//  Created by Rachel Dorn on 7/29/16.
//  Copyright © 2016 RachelDorn. All rights reserved.
//

import Foundation

class Time: NSObject {
    
    var minute : Int
    var hour : Int
    
    override init() {
        minute = 1
        hour = 1
        super.init()
    }
    
    init(min: Int, hr: Int) {
        minute = min
        hour = hr
        super.init()
    }
    
    func addMinute() -> Int {
        minute = (minute + 1) % 60
        return minute
    }
    
    func addHour() -> Int {
        hour += 1
        if (hour == 13) {
            hour = 1
        }
        return hour
    }

}
