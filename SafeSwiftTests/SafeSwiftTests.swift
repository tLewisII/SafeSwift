//
//  SafeSwiftTests.swift
//  SafeSwiftTests
//
//  Created by Terry Lewis II on 6/28/14.
//  Copyright (c) 2014 Blue Plover Productions. All rights reserved.
//

import XCTest
import SafeSwift
class SafeSwiftTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testSafeUnwrap() {
        let val:String? = "Not nil"
        XCTAssert(safeUnwrap(val, "") == "Not nil", "Should be \"Not nil\"")
        
        let nilVal:String? = nil
        XCTAssert(safeUnwrap(nil, "nothing") == "nothing", "Should be \"nothing\"");
    }
    
    //    func testSafeIndex() {
    //        let array = [1,2,3,4]
    //
    //        XCTAssert(array.safeIndex(1) == .Some(2), "Should be .Some(2)")
    //        XCTAssert(array.safeIndex(4) == nil, "Should be nil")
    //        XCTAssert(array.safeIndex(-456) == nil, "Should be nil")
    //    }
    
    //    func testSafeHead() {
    //        let array = [1,2,3,4]
    //        XCTAssert(array.safeHead() == .Some(1), "Should be .Some(1)")
    //        XCTAssert(Array<Int>().safeHead() == nil, "Should be nil")
    //    }
    
    //    func testSafeTail() {
    //        let array = [1,2,3,4]
    //        let tail = array.safeTail()
    //        let shouldEQ:Int[]? = .Some([2,3,4])
    //        if let unwrap = tail {
    //            XCTAssert(unwrap == [2,3,4], "Should be equal")
    //        } else {
    //            XCTFail("Should never be reached")
    //        }
    //
    //        XCTAssert(Array<Int>().safeTail() == nil, "Should be nil")
    //    }
    
    //    func testSafeRange() {
    //        let array = [1,2,3,4]
    //        XCTAssert(array.safeRange(1...4) == nil, "Should be nil")
    //
    //        if let unwrap = array.safeRange(1..4) {
    //            XCTAssert(unwrap == [2,3,4], "Should be [2,3,4]")
    //        } else {
    //            XCTFail("Should not be reached")
    //        }
    //}
}
