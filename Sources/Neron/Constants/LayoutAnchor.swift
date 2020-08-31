//
//  File.swift
//  
//
//  Created by jaki on 13/08/2020.
//

public enum LayoutAnchor {}

extension LayoutAnchor {
    
    public enum Axis {
        
        case xAxis
        case yAxis
        
    }
    
    public enum Dimension {
        
        case width
        case height
        
    }
    
    public enum XAxis {
        
        case leading
        case trailing
        
    }
    
    public enum YAxis {
        
        case top
        case bottom
        
    }
    
}
