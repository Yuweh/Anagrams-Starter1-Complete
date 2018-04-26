//
//  Config.swift
//  Anagrams
//
//  Created by Caroline on 1/08/2014.
//  Copyright (c) 2013 Underplot ltd. All rights reserved.
//

import Foundation
import UIKit

//UI Constants
let ScreenWidth = UIScreen.main.bounds.size.width
let ScreenHeight = UIScreen.main.bounds.size.height



//Random number generator
func randomNumber(min:UInt32, max:UInt32) -> Int {
  let result = (arc4random() % (max - min + 1)) + min
  return Int(result)
}

