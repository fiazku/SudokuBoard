//
//  Board.swift
//  SudokuBoard
//
//  Created by Fiaz Sami on 12/7/15.
//  Copyright © 2015 mobilemakers. All rights reserved.
//

import UIKit

class Board: UIView {

    let boardSpacing = 2
    let boardColor = UIColor.purpleColor()


    override init(frame: CGRect) {
        super.init(frame: frame)
        var vflIndex = [String: UIView]()

        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = boardColor

        for i in 1...9 {
            let grid = Grid(frame: self.frame)
            vflIndex["grid\(i)"] = grid
            addSubview(grid)
        }

        addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-0-[grid1]-\(boardSpacing)-[grid2(==grid1)]-\(boardSpacing)-[grid3(==grid1)]-0-|", options: [], metrics: nil, views: vflIndex))
        addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-0-[grid4]-\(boardSpacing)-[grid5(==grid4)]-\(boardSpacing)-[grid6(==grid4)]-0-|", options: [], metrics: nil, views: vflIndex))
        addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-0-[grid7]-\(boardSpacing)-[grid8(==grid7)]-\(boardSpacing)-[grid9(==grid7)]-0-|", options: [], metrics: nil, views: vflIndex))


        addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|-0-[grid1]-\(boardSpacing)-[grid4(==grid1)]-\(boardSpacing)-[grid7(==grid1)]-0-|", options: [], metrics: nil, views: vflIndex))
        addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|-0-[grid2]-\(boardSpacing)-[grid5(==grid2)]-\(boardSpacing)-[grid8(==grid2)]-0-|", options: [], metrics: nil, views: vflIndex))
        addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|-0-[grid3]-\(boardSpacing)-[grid6(==grid3)]-\(boardSpacing)-[grid9(==grid3)]-0-|", options: [], metrics: nil, views: vflIndex))
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
