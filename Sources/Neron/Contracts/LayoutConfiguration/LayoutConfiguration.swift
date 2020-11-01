//
//  Copyright © 2020 Jakub Kiermasz. All rights reserved.
//


#if canImport(UIKit)
import UIKit
#else
import AppKit
#endif

public protocol LayoutConfiguration: Layout {
    
    // MARK: - API
    
    #if canImport(UIKit)
    
    @discardableResult
    func add(to parent: UIView) -> Self
    
    #else
    
    @discardableResult
    func add(to parent: NSView) -> Self
    
    #endif
    
}
