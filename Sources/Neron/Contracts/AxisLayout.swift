//
//  File.swift
//  
//
//  Created by jaki on 13/08/2020.
//

import Foundation
import UIKit

public protocol AxisLayout {
    
    @discardableResult
    func center(with sibling: UIView, constant: CGFloat) -> ConstraintActivationResult
    
}
