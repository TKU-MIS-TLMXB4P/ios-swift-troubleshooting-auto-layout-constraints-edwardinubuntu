//
//  AutoLayoutDemoUITests.swift
//  AutoLayoutDemoUITests
//
//  Created by Edward Chiang on 11/6/15.
//  Copyright © 2015 Soleil Studio. All rights reserved.
//

import XCTest

class AutoLayoutDemoUITests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()
        
        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testAppRotation() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let app = XCUIApplication()
        
        XCUIDevice.sharedDevice().orientation = .Portrait
        
        // Check buttons
        let topLeftButton = app.buttons["Top Left"]
        topLeftButton.tap()
        
        let bottomLeftButton = app.buttons["Bottom Left"]
        bottomLeftButton.tap()
        
        let topRightButton = app.buttons["Top Right"]
        topRightButton.tap()
        
        let bottomRightButton = app.buttons["Bottom Right"]
        bottomRightButton.tap()
    
        
        // Rotation
        XCUIDevice.sharedDevice().orientation = .LandscapeLeft
        
        let app2 = app
        let firstButton = app2.buttons["First"]
        
        let secondButton = app2.buttons["Second"]
        secondButton.tap()
        
        let thirdButton = app2.buttons["Third"]
        thirdButton.tap()
        
        let fourthButton = app2.buttons["Fourth"]
        fourthButton.tap()
        
        app2.buttons["Fifth"].tap()
        
        // Start new rotation
        XCUIDevice.sharedDevice().orientation = .PortraitUpsideDown
        XCUIDevice.sharedDevice().orientation = .LandscapeRight
        XCUIDevice.sharedDevice().orientation = .Portrait
        
        // Test for segement
        fourthButton.tap()
        thirdButton.tap()
        secondButton.tap()
        firstButton.tap()
    }
    
    
    
}
