//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by 文淦泉 on 2017/10/1.
//  Copyright © 2017年 文淦泉. All rights reserved.
//

import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {
    
    //MARK: Meal Class Test
    
    //Confirm that the Meal initializer returns a Meal object when passed valid parameters.
    func testMealInitializatonSucceeds(){
        // Zero rating
        let zeroRatingMeal = Meal.init(name: "Zero", photo: nil, rating: 0)
        XCTAssertNotNil(zeroRatingMeal)
    
        // Highest positive rating
        let positiveRatingMeal = Meal.init(name: "Positive", photo: nil, rating: 5)
        XCTAssertNotNil(positiveRatingMeal)
    }
    
    //Confirm that the Meal initializer returns nil when passed a negative rating of an empty name.
    func testMealInitializationFails(){
        
        //Negative rating
        let negativeRatingMeal = Meal.init(name: "Negative", photo: nil, rating: -1)
        XCTAssertNil(negativeRatingMeal)
        
        //Rating exceeds maximum
        let largeRatingMeal = Meal.init(name: "Large", photo: nil, rating: 6)
        XCTAssertNil(largeRatingMeal)
        
        //Empty String
        let emptyStringMeal = Meal.init(name: "", photo: nil, rating: 0)
        XCTAssertNil(emptyStringMeal)
        
        
    }
    
}
