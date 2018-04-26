//
//  TileView.swift
//  Anagrams
//
//  Created by Republisys on 26/04/2018.
//  Copyright © 2018 Caroline. All rights reserved.
//

import UIKit

// 1
class TileView: UIImageView {
    // 2
    var letter: Character
    // 3
    var isMatched: Bool = false
    // 4
    required init?(coder aDecoder: NSCoder) {
        fatalError("use init(letter:, sideLength:)")
    }
    // 5
    init(letter: Character, sideLength: CGFloat) {
        self.letter = letter
        
        //5.1
        let image = UIImage(named: "tile")
        
        //5.2
        super.init(image: image)
        
        //6
        let scale = sideLength / (image?.size.width)!
        self.frame = CGRect(x: 0, y: 0, width: (image?.size.width)! * scale, height: (image?.size.height)! * scale)
    
        //Adding Letters
        
        //add a letter on top
        let letterLabel = UILabel(frame: self.bounds)
        letterLabel.textAlignment = NSTextAlignment.center
        letterLabel.textColor = UIColor.white
        letterLabel.backgroundColor = UIColor.clear
        letterLabel.text = String(letter).uppercased()
        letterLabel.font = UIFont(name: "Verdana-Bold", size: 78.0*scale)
        self.addSubview(letterLabel)
        
    }
    
    
    //randomize skipped
    
    
    
}
