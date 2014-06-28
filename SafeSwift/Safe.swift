//
//  Safe.swift
//  SafeSwift
//
//  Created by Terry Lewis II on 6/28/14.
//  Copyright (c) 2014 Blue Plover Productions. All rights reserved.
//

import Foundation

extension Array {
    func safeIndex(i:Int) -> T? {
        if  i >= 0 && i < self.count {
            return self[i]
        } else {
            return nil
        }
    }
    
    func safeHead() -> T? {
        if !self.isEmpty {
            return self[0]
        } else {
            return nil
        }
    }
    
    func safeLast() -> T? {
        if !self.isEmpty {
            return self[self.count - 1]
        } else {
            return nil
        }
    }
    
    func safeTail() -> T[]? {
        if self.count > 1 {
            return Array(self[1..self.count])
        } else {
            return nil
        }
    }
    
    func safeRange(r:Array<Range<Int>>) -> T[]? {
        if let range = r.safeHead() {
            if range.startIndex >= 0 && range.endIndex <= self.count {
                return Array(self[range])
            }
        }
        return nil
    }
}


func safeUnwrap<T>(op:Optional<T>, defaultVal:T) -> T {
    switch op {
    case let .Some(a): return a
    case .None: return defaultVal
    }
}