//
//  Grid.swift
//  SudokuBoard
//
//  Created by Fiaz Sami on 12/7/15.
//  Copyright © 2015 mobilemakers. All rights reserved.
//

import UIKit

class Grid: UIView {

    let SPACING_GRID = 0.5

    override init(frame: CGRect) {
        super.init(frame: frame)
        var vflIndex = [String: UIView]()

        for i in 1...9 {
            let tile = Tile(frame: self.frame)
            tile.translatesAutoresizingMaskIntoConstraints = false
            vflIndex["tile\(i)"] = tile
            addSubview(tile)
        }

        addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-0-[tile1]-\(SPACING_GRID)-[tile2(==tile1)]-\(SPACING_GRID)-[tile3(==tile1)]-0-|", options: [], metrics: nil, views: vflIndex))
        addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-0-[tile4]-\(SPACING_GRID)-[tile5(==tile4)]-\(SPACING_GRID)-[tile6(==tile4)]-0-|", options: [], metrics: nil, views: vflIndex))
        addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-0-[tile7]-\(SPACING_GRID)-[tile8(==tile7)]-\(SPACING_GRID)-[tile9(==tile7)]-0-|", options: [], metrics: nil, views: vflIndex))


        addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|-0-[tile1]-\(SPACING_GRID)-[tile4(==tile1)]-\(SPACING_GRID)-[tile7(==tile1)]-0-|", options: [], metrics: nil, views: vflIndex))
        addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|-0-[tile2]-\(SPACING_GRID)-[tile5(==tile2)]-\(SPACING_GRID)-[tile8(==tile2)]-0-|", options: [], metrics: nil, views: vflIndex))
        addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|-0-[tile3]-\(SPACING_GRID)-[tile6(==tile3)]-\(SPACING_GRID)-[tile9(==tile3)]-0-|", options: [], metrics: nil, views: vflIndex))
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
}