//
//  Copyright © 2020 Jakub Kiermasz. All rights reserved.
//


#if canImport(UIKit)
import UIKit
public protocol AxisLayout {
    
    @discardableResult
    func center(with sibling: UIView) -> LayoutResult
    
    @discardableResult
    func center(with layoutGuide: UILayoutGuide) -> LayoutResult
    
}

#else

import AppKit
public protocol AxisLayout {
    
    @discardableResult
    func center(with sibling: NSView) -> LayoutResult
    
    @discardableResult
    func center(with layoutGuide: NSLayoutGuide) -> LayoutResult
    
}
#endif
