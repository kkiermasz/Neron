//
//  Copyright © 2020 Jakub Kiermasz. All rights reserved.
//


#if canImport(UIKit)
    import UIKit
#else
    import AppKit
#endif

final class ViewLayout: ViewLayoutConfiguration, Layout {
    
    // MARK: - Properties
    
    var xAxis: AxisLayout { ViewAxisLayout(for: view, axis: .xAxis, invoker: self, container: container) }
    var yAxis: AxisLayout { ViewAxisLayout(for: view, axis: .yAxis, invoker: self, container: container) }
    
    var width: DimensionLayout { ViewDimensionLayout(for: view, anchor: .width, invoker: self, container: container) }
    var height: DimensionLayout { ViewDimensionLayout(for: view, anchor: .height, invoker: self, container: container) }
    
    var leading: XAxisLayout { ViewXAxisLayout(for: view, anchor: .leading, invoker: self, container: container) }
    var trailing: XAxisLayout { ViewXAxisLayout(for: view, anchor: .trailing, invoker: self, container: container) }
    
    var top: YAxisLayout { ViewYAxisLayout(for: view, anchor: .top, invoker: self, container: container) }
    var bottom: YAxisLayout { ViewYAxisLayout(for: view, anchor: .bottom, invoker: self, container: container) }
    
    private let view: View
    private let container: ConstraintsContainer
    
    // MARK: - Initializers
    
    convenience init(of view: View) {
        self.init(for: view, with: DefaultConstraintsContainer())
    }
    
    init(for view: View, with container: ConstraintsContainer) {
        self.view = view
        self.container = container
    }
    
    // MARK: - LayoutConfiguration
    
    @discardableResult
    func add(to parent: View) -> Self {
        parent.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        return self
    }
    
    // MARK: - ViewLayoutConfiguration
    
    @discardableResult
    func add(subviews: View...) -> ViewLayoutConfiguration {
        add(subviews: subviews)
        return self
    }
    
    // MARK: - Layout
    
    func add(subviews: [View]) {
        subviews.forEach { subview in
            view.addSubview(subview)
            subview.translatesAutoresizingMaskIntoConstraints = false
        }
    }
    
    func activate() -> Self {
        container.activate()
        return self
    }
    
    @discardableResult
    func embed(in parent: View, with padding: CGFloat) -> Self {
        leading.equalTo(parent, .leading).with(constant: padding)
        trailing.equalTo(parent, .trailing).with(constant: -padding)
        top.equalTo(parent, .top).with(constant: padding)
        bottom.equalTo(parent, .bottom).with(constant: -padding)
        return self
    }
    
    func embed(in parent: View) -> Self {
        embed(in: parent, with: 0)
        return self
    }
    
}
