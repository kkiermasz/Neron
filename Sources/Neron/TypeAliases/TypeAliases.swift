//
//  Copyright © 2020 Jakub Kiermasz. All rights reserved.
//


#if canImport(UIKit)
    import UIKit
    typealias View = UIView
    typealias LayoutGuide = UILayoutGuide
    typealias LayoutPriority = UILayoutPriority
#else
    import AppKit
    typealias View = NSView
    typealias LayoutGuide = NSLayoutGuide
    typealias LayoutPriority = NSLayoutConstraint.Priority
#endif
