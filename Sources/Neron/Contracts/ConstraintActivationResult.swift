//
//  File.swift
//  
//
//  Created by jaki on 13/08/2020.
//

import UIKit

public protocol ConstraintActivationResult: Layout {
    
    // MARK: - Properties
    
    /// Added constraint
    var constraint: NSLayoutConstraint { get }
    
    /// Activates previously added constraints and returns self
    ///
    /// - Returns: the result of constraint activation as `ConstraintActivationResult`
    @discardableResult
    func activate() -> ConstraintActivationResult
    
}
