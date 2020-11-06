//
//  Copyright © 2020 Jakub Kiermasz. All rights reserved.
//


public protocol Layout {
    
    // MARK: - Axis
    
    var xAxis: AxisLayout { get }
    var yAxis: AxisLayout { get }
    
    // MARK: - Dimension
    
    var width: DimensionLayout { get }
    var height: DimensionLayout { get }
    
    // MARK: - XAxis
    
    var leading: XAxisLayout { get }
    var trailing: XAxisLayout { get }
    
    // MARK: - YAxis
    
    var top: YAxisLayout { get }
    var bottom: YAxisLayout { get }
    
    // MARK: - API
    
    /// Activates previously added constraints and returns self
    ///
    /// - Returns: Layout with cleared collection of constraints to activate
    @discardableResult
    func activate() -> Self
    
}
