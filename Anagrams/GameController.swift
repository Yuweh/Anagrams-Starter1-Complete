//
//  GameController.swift
//  Anagrams
//
//  Created by Republisys on 26/04/2018.
//  Copyright © 2018 Caroline. All rights reserved.
//

import UIKit

class GameController {

    var gameView: UIView!
    var level: Level!
    let TileMargin: CGFloat = 20.0
    private var tiles = [TileView]()
    private var targets = [TargetView]()
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//    }
    
    init() {
        print("GameController initialized")
    }
    
    func dealRandomAnagram() {
        
        //check that this method is only called after the level property is set & that level obj contains anagrams
        assert(level.anagrams.count > 0, "no level loaded")
        
        //generate a random index into the anagram list
        let randomIndex = randomNumber(min: 0, max: UInt32(level.anagrams.count-1))
        let anagramPair = level.anagrams[randomIndex]
        
        // store 2 phrases
        let anagram1 = anagramPair[0] as! String
        let anagram2 = anagramPair[1] as! String
        
        //
        print("\(anagram1)")
        print("\(anagram2)")
        
        //calculate the tile size
        let tileSide = ceil(ScreenWidth * 0.9 / CGFloat(max(anagram1.characters.count, anagram2.characters.count))) - TileMargin
        
        //get the left margin for first tile
        var xOffset = (ScreenWidth - CGFloat(max(anagram1.characters.count, anagram2.characters.count)) * (tileSide + TileMargin)) / 2.0
        
        //adjust for tile center (instead of the tile's origin)
        xOffset += tileSide / 2.0
        
        //code to display the tiles
        
        //intialize the tile list
        tiles = []
        
        //create files
        for (index, letter) in anagram1.enumerated() {
            
            //3 check each letter
            if letter != " " {
                let tile = TileView(letter: letter, sideLength: tileSide)
                tile.center = CGPoint(x: xOffset + CGFloat(index)*(tileSide + TileMargin), y: ScreenHeight/4*3)
                
                //4  add the tile to the gameView and tiles array
                gameView.addSubview(tile)
                tiles.append(tile)
            }
            
        }
        
        //for "TARGETS"
        targets = []
        
        //create targets
        for (index, letter) in anagram2.enumerated() {
            if letter != " " {
                let target = TargetView(letter: letter, sideLength: tileSide)
                target.center = CGPoint(x: xOffset + CGFloat(index)*(tileSide + TileMargin), y: ScreenHeight/4)
                
                gameView.addSubview(target)
                targets.append(target)
            }
        }
        
    }
    


}
