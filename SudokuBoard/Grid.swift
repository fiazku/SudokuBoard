//
//  Grid.swift
//  SudokuBoard
//
//  Created by Fiaz Sami on 12/7/15.
//  Copyright © 2015 mobilemakers. All rights reserved.
//

import UIKit

class Grid: UIView {

    let gridSpacing = 0.5
    let gridColor = UIColor.greenColor()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        var vflIndex = [String: UIView]()

        backgroundColor = gridColor
        translatesAutoresizingMaskIntoConstraints = false

        for i in 1...9 {
            let tile = Tile(frame: self.frame)
            tile.translatesAutoresizingMaskIntoConstraints = false
            vflIndex["tile\(i)"] = tile
            addSubview(tile)
        }

        addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-0-[tile1]-\(gridSpacing)-[tile2(==tile1)]-\(gridSpacing)-[tile3(==tile1)]-0-|", options: [], metrics: nil, views: vflIndex))
        addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-0-[tile4]-\(gridSpacing)-[tile5(==tile4)]-\(gridSpacing)-[tile6(==tile4)]-0-|", options: [], metrics: nil, views: vflIndex))
        addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-0-[tile7]-\(gridSpacing)-[tile8(==tile7)]-\(gridSpacing)-[tile9(==tile7)]-0-|", options: [], metrics: nil, views: vflIndex))


        addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|-0-[tile1]-\(gridSpacing)-[tile4(==tile1)]-\(gridSpacing)-[tile7(==tile1)]-0-|", options: [], metrics: nil, views: vflIndex))
        addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|-0-[tile2]-\(gridSpacing)-[tile5(==tile2)]-\(gridSpacing)-[tile8(==tile2)]-0-|", options: [], metrics: nil, views: vflIndex))
        addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|-0-[tile3]-\(gridSpacing)-[tile6(==tile3)]-\(gridSpacing)-[tile9(==tile3)]-0-|", options: [], metrics: nil, views: vflIndex))
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
}