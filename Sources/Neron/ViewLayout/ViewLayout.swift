//
//  File.swift
//  
//
//  Created by jaki on 13/08/2020.
//

import UIKit

public final class ViewLayout: Layout, LayoutInvoker {
    
    // MARK: - Properties
    
    public private(set) lazy var xAxis: AxisLayout = ViewAxisLayout(for: view, axis: .xAxis, invoker: self)
    public private(set) lazy var yAxis: AxisLayout = ViewAxisLayout(for: view, axis: .yAxis, invoker: self)
    
    public private(set) lazy var width: DimensionLayout = ViewDimensionLayout(for: view, anchor: .width, invoker: self)
    public private(set) lazy var height: DimensionLayout = ViewDimensionLayout(for: view, anchor: .height, invoker: self)
    
    private let view: UIView
    
    private var constraintsToActivate: [NSLayoutConstraint] = []
    
    // MARK: - Initializers
    
    public init(of view: UIView) {
        self.view = view
    }
    
    // MARK: - Layout
    
    @discardableResult
    public func add(to parent: UIView) -> Self {
        parent.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        return self
    }
    
    @discardableResult
    public func add(subviews: UIView...) -> Self {
        add(subviews: subviews)
        return self
    }
    
    // MARK: - LayoutInvoker
    
    func activate() {
        NSLayoutConstraint.activate(constraintsToActivate)
        constraintsToActivate = []
    }
    
    func endorse(_ constraint: NSLayoutConstraint) {
        constraintsToActivate.append(constraint)
    }
    
    func add(subviews: [UIView]) {
        subviews.forEach { subview in
            view.addSubview(subview)
            subview.translatesAutoresizingMaskIntoConstraints = false
        }
    }
    
}
