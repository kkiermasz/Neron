//
//  File.swift
//  
//
//  Created by jaki on 13/08/2020.
//

import UIKit

public protocol Layout {
    
    // MARK: - Axis
    
    var xAxis: AxisLayout { get }
    var yAxis: AxisLayout { get }
    
    // MARK: - Dimension
    
    var width: DimensionLayout { get }
    var height: DimensionLayout { get }
    
    // MARK: - API
    
    @discardableResult
    func add(to parent: UIView) -> Self
    
    @discardableResult
    func add(subviews: UIView...) -> Self
    
}
