//
//  File.swift
//
//
//  Created by jaki on 14/08/2020.
//

import Foundation
import UIKit

extension NSLayoutConstraint {

    func set(priority: UILayoutPriority?) {
        if let priority = priority {
            self.priority = priority
        }
    }

}
