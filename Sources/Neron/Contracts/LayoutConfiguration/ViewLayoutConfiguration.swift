//
//  ViewLayoutConfiguration.swift
//  
//
//  Created by jaki on 08/09/2020.
//

public protocol ViewLayoutConfiguration: LayoutConfiguration {
    
    // MARK: - API
    
    @discardableResult
    func add(subviews: View...) -> ViewLayoutConfiguration
    
}
