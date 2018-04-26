//
//  Level.swift
//  Anagrams
//
//  Created by Francis Bergonia on 26/04/2018.
//  Copyright © 2018 Francis Bergonia. All rights reserved.
//

import Foundation

struct Level {
    //this matches the Level's plist files
    let pointsPerTile: Int
    let timeToSolve: Int
    let anagrams: [NSArray]
    
    init(levelNumber: Int) {
        
        // fin .plist file for this level
        let fileName = "level\(levelNumber).plist"
        let levelPath = "\(Bundle.main.resourcePath!)/\(fileName)"
        
        
        // load .plist file
        let levelDictionary: NSDictionary? = NSDictionary(contentsOfFile: levelPath)
        
        // validation
        assert(levelDictionary != nil, "Level configuration file not found")
        
        // initialize the object from the dictionary
        
        self.pointsPerTile = levelDictionary!["pointsPerTile"] as! Int
        self.timeToSolve = levelDictionary!["timeToSolve"] as! Int
        self.anagrams = levelDictionary!["anagrams"] as! [NSArray]
    }
    
}
