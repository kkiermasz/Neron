//
//  File.swift
//  
//
//  Created by jaki on 14/08/2020.
//

import Foundation
import UIKit

extension AxisLayout {
    
    @discardableResult
    public func center(with sibling: UIView) -> ConstraintActivationResult {
        center(with: sibling, constant: 0)
    }
    
}
