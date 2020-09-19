//
//  TypeAliases.swift
//
//
//  Created by jaki on 10/09/2020.
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
