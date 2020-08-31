//
//  File.swift
//  
//
//  Created by jaki on 13/08/2020.
//

import UIKit

final class DefaultConstraintActivationResult: ConstraintActivationResult {
    
    // MARK: - Properties
    
    let constraint: NSLayoutConstraint
    
    public private(set) lazy var xAxis: AxisLayout = DefaultConstraintActivationResultAxisLayout(axis: .xAxis, invoker: invoker)
    public private(set) lazy var yAxis: AxisLayout = DefaultConstraintActivationResultAxisLayout(axis: .yAxis, invoker: invoker)
    
    public private(set) lazy var width: DimensionLayout = DefaultConstraintActivationResultDimensionLayout(anchor: .width, invoker: invoker)
    public private(set) lazy var height: DimensionLayout = DefaultConstraintActivationResultDimensionLayout(anchor: .height, invoker: invoker)
    
    private let invoker: LayoutInvoker
    
    // MARK: - Initializers
    
    init(constraint: NSLayoutConstraint, invoker: LayoutInvoker) {
        self.constraint = constraint
        self.invoker = invoker
    }
    
    // MARK: - ConstraintActivationResult
    
    func activate() -> ConstraintActivationResult {
        invoker.activate()
        return self
    }
    
    // MARK: - Layout
    
    @discardableResult
    public func add(to parent: UIView) -> Self {
        invoker.add(to: parent)
        return self
    }
    
    @discardableResult
    public func add(subviews: UIView...) -> Self {
        invoker.add(subviews: subviews)
        return self
    }

    
}
