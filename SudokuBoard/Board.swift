//
//  Board.swift
//  SudokuBoard
//
//  Created by Fiaz Sami on 12/7/15.
//  Copyright © 2015 mobilemakers. All rights reserved.
//

import UIKit

class Board: UIView {

    let SPACING_BOARD = 2
    let COLOR_GRID = UIColor.greenColor()

    override init(frame: CGRect) {
        super.init(frame: frame)
        var vflIndex = [String: UIView]()

        for i in 1...9 {
            let grid = Grid(frame: self.frame)
            grid.backgroundColor = COLOR_GRID
            grid.translatesAutoresizingMaskIntoConstraints = false
            vflIndex["grid\(i)"] = grid
            addSubview(grid)
        }

        addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-0-[grid1]-\(SPACING_BOARD)-[grid2(==grid1)]-\(SPACING_BOARD)-[grid3(==grid1)]-0-|", options: [], metrics: nil, views: vflIndex))
        addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-0-[grid4]-\(SPACING_BOARD)-[grid5(==grid4)]-\(SPACING_BOARD)-[grid6(==grid4)]-0-|", options: [], metrics: nil, views: vflIndex))
        addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-0-[grid7]-\(SPACING_BOARD)-[grid8(==grid7)]-\(SPACING_BOARD)-[grid9(==grid7)]-0-|", options: [], metrics: nil, views: vflIndex))


        addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|-0-[grid1]-\(SPACING_BOARD)-[grid4(==grid1)]-\(SPACING_BOARD)-[grid7(==grid1)]-0-|", options: [], metrics: nil, views: vflIndex))
        addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|-0-[grid2]-\(SPACING_BOARD)-[grid5(==grid2)]-\(SPACING_BOARD)-[grid8(==grid2)]-0-|", options: [], metrics: nil, views: vflIndex))
        addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|-0-[grid3]-\(SPACING_BOARD)-[grid6(==grid3)]-\(SPACING_BOARD)-[grid9(==grid3)]-0-|", options: [], metrics: nil, views: vflIndex))
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
