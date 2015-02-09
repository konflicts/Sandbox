//
//  Date.swift
//  TaskIt
//
//  Created by Pedro Pena on 2/9/15.
//  Copyright (c) 2015 Pedo Peña. All rights reserved.
//

import Foundation

class Date {
    class func from (#year: Int, month: Int, day: Int) -> NSDate
        {
            
            var components = NSDateComponents()
            components.year = year
            components.month = month
            components.day = day
            
            var gregorianCalendar = NSCalendar(calendarIdentifier: NSGregorianCalendar)
            
            var date = gregorianCalendar?.dateFromComponents(components)
            
          return date!
        }
    class func toString(#date:NSDate) -> String
    {
        
        let dateStringFormatter = NSDateFormatter()
        dateStringFormatter.dateFormat = "yyy-MM-dd"
        let dateString = dateStringFormatter.stringFromDate(date)
        return dateString
    }
}
