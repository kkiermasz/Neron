//
//  LayoutGuideLayout.swift
//
//
//  Created by jaki on 08/09/2020.
//

#if canImport(UIKit)
    import UIKit
#else
    import AppKit
#endif

final class LayoutGuideLayout: LayoutConfiguration, Layout {
    
    // MARK: - Properties
    
    var xAxis: AxisLayout { LayoutGuideAxisLayout(for: layoutGuide, axis: .xAxis, invoker: self, container: container) }
    var yAxis: AxisLayout { LayoutGuideAxisLayout(for: layoutGuide, axis: .yAxis, invoker: self, container: container) }
    
    var width: DimensionLayout { LayoutGuideDimensionLayout(for: layoutGuide, anchor: .width, invoker: self, container: container) }
    var height: DimensionLayout { LayoutGuideDimensionLayout(for: layoutGuide, anchor: .height, invoker: self, container: container) }
    
    var leading: XAxisLayout { LayoutGuideXAxisLayout(for: layoutGuide, anchor: .leading, invoker: self, container: container) }
    var trailing: XAxisLayout { LayoutGuideXAxisLayout(for: layoutGuide, anchor: .trailing, invoker: self, container: container) }
    
    var top: YAxisLayout { LayoutGuideYAxisLayout(for: layoutGuide, anchor: .top, invoker: self, container: container) }
    var bottom: YAxisLayout { LayoutGuideYAxisLayout(for: layoutGuide, anchor: .bottom, invoker: self, container: container) }
    
    private let layoutGuide: LayoutGuide
    private let container: ConstraintsContainer
    
    // MARK: - Initializers
    
    convenience init(of layoutGuide: LayoutGuide) {
        self.init(for: layoutGuide, with: DefaultConstraintsContainer())
    }
    
    init(for layoutGuide: LayoutGuide, with container: ConstraintsContainer) {
        self.layoutGuide = layoutGuide
        self.container = container
    }
    
    // MARK: - LayoutConfiguration
    
    @discardableResult
    func add(to parent: View) -> Self {
        parent.addLayoutGuide(layoutGuide)
        return self
    }
    
    func activate() -> Layout {
        container.activate()
        return self
    }
    
}
