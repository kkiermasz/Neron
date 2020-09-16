//
//  LayoutConfiguration.swift
//  
//
//  Created by jaki on 08/09/2020.
//

public protocol LayoutConfiguration: Layout {
    
    // MARK: - API
    
    @discardableResult
    func add(to parent: View) -> Self
    
}
