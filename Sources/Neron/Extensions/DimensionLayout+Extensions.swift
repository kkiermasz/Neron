//
//  File.swift
//  
//
//  Created by jaki on 14/08/2020.
//

import Foundation
import UIKit

extension DimensionLayout {
    
    @discardableResult
    public func equal(constant: CGFloat) -> ConstraintActivationResult {
        equal(constant: constant, with: nil)
    }
    
}
