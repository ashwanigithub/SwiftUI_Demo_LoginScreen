//
//  SwiftUIBasicSample_LoginScreenUITestsLaunchTests.swift
//  SwiftUIBasicSample_LoginScreenUITests
//
//  Created by Ashwani Sharma on 24/03/24.
//

import XCTest

final class SwiftUIBasicSample_LoginScreenUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
