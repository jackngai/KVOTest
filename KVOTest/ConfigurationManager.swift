//
//  ConfigurationManager.swift
//  KVOTest
//
//  Created by Jack Ngai on 5/13/17.
//  Copyright © 2017 Jack Ngai. All rights reserved.
//

import Foundation

class ConfigurationManager: NSObject {
    
    var configuration: Configuration
    
    // MARK: -
    
    lazy private var dateFormatter: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy:MM:dd HH:mm:ss"
        return dateFormatter
        
    }()
    
    // MARK: -
    
    var createdAt: String {
        return dateFormatter.string(from: configuration.createdAt)
    }
    
    var updatedAt: String {
        return dateFormatter.string(from: configuration.updatedAt)
    }
    
        // MARK: - Initialization
    
    init(withConfiguration configuration: Configuration) {
        self.configuration = configuration
        
        super.init()
    }
    
    // MARK: - Public Interface
    
    func updateConfiguration() {
        configuration .updatedAt = Date()
    }
    
    
    
    
}
