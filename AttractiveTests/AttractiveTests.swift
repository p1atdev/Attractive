//
//  AttractiveTests.swift
//  AttractiveTests
//
//  Created by 周廷叡 on 2021/01/19.
//

import XCTest
@testable import Attractive

class AttractiveTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        
        let testAttractive = AttractiveViewController()
        
        let components = AttractiveComponents()
        
        components.append(component: .init(type: .title, textContent: "This is a title!"))
        
        for i in Range(1...5) {
            components.append(component: .init(type: .text, textContent: "This is a line \(i) of text!"))
        }
        
        //create
        testAttractive.create(attractive: components)
        
        
        
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
