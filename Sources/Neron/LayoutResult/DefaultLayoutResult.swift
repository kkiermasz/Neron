//
//  File.swift
//
//
//  Created by jaki on 13/08/2020.
//

#if canImport(UIKit)
    import UIKit
#else
    import AppKit
#endif

final class DefaultLayoutResult: ConstraintMultiplier {
    
    // MARK: - Properties
    
    private let invoker: Layout
    private let container: ConstraintsContainer
    private let constraintPrototype: LayoutConstraint
    
    // MARK: - Getters
    
    var constraint: NSLayoutConstraint { NSLayoutConstraint(wrapping: constraintPrototype) }
    
    var xAxis: AxisLayout { ResultAxisLayout(axis: .xAxis, invoker: invoker) }
    var yAxis: AxisLayout { ResultAxisLayout(axis: .yAxis, invoker: invoker) }
    
    var width: DimensionLayout { ResultDimensionLayout(anchor: .width, invoker: invoker) }
    var height: DimensionLayout { ResultDimensionLayout(anchor: .height, invoker: invoker) }
    
    var leading: XAxisLayout { ResultXAxisLayout(anchor: .leading, invoker: invoker) }
    var trailing: XAxisLayout { ResultXAxisLayout(anchor: .trailing, invoker: invoker) }
    
    var top: YAxisLayout { ResultYAxisLayout(anchor: .top, invoker: invoker) }
    var bottom: YAxisLayout { ResultYAxisLayout(anchor: .bottom, invoker: invoker) }
    
    // MARK: - InitializersLayout
    
    init(constraint: LayoutConstraint, invoker: Layout, container: ConstraintsContainer) {
        constraintPrototype = constraint
        self.invoker = invoker
        self.container = container
    }
    
    // MARK: - Layout
    
    func activate() -> Layout {
        container.activate()
        return self
    }
    
    // MARK: - ConstraintMultiplier
    
    func multiplied(by multiplier: CGFloat) -> ConstraintPrioritizer {
        constraintPrototype.set(multiplier: multiplier)
        return self
    }
    
    // MARK: - ConstraintPrioritizer
    
    func with(priority: LayoutPriority) -> ConstraintConstantizer {
        constraintPrototype.set(priority: priority)
        return self
    }
    
    func with(priority: Float) -> ConstraintConstantizer {
        constraintPrototype.set(priority: .init(priority))
        return self
    }
    
    // MARK: - ConstraintConstantizer
    
    func with(constant: CGFloat) -> LayoutResult {
        constraintPrototype.set(constant: constant)
        return self
    }
    
}
