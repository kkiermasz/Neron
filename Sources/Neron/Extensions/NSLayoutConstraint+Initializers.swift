//
//  NSLayoutConstraint+Initializers.swift
//
//
//  Created by jaki on 10/09/2020.
//

#if canImport(UIKit)
    import UIKit
#else
    import AppKit
#endif

extension NSLayoutConstraint {

    convenience init(wrapping prototype: LayoutConstraint) {
        self.init(item: prototype.item,
                  attribute: prototype.itemAttribute,
                  relatedBy: prototype.relation,
                  toItem: prototype.target,
                  attribute: prototype.targetAttribute,
                  multiplier: prototype.multiplier,
                  constant: prototype.constant)
    }

}
