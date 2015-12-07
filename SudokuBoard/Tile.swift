//
//  Tile.swift
//  SudokuBoard
//
//  Created by Fiaz Sami on 12/7/15.
//  Copyright © 2015 mobilemakers. All rights reserved.
//

import UIKit

class Tile: UILabel {

    let TILE_PADDING = 0.5
    let FULL_SELECTED = "1 2 3\n4 5 6\n7 8 9"

    var selected: Int = 1

    override init(frame: CGRect) {
        super.init(frame: frame)

        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = UIColor.grayColor()
        textColor = UIColor.whiteColor()
        textAlignment = NSTextAlignment.Center
        font = UIFont(name: "Menlo-Regular", size: 9.0)
        numberOfLines = 0
        lineBreakMode = NSLineBreakMode.ByWordWrapping
        userInteractionEnabled = true

        addGestureRecognizer(UITapGestureRecognizer(target: self, action: "updateLabel:"))
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    func updateLabel(recognizer: UITapGestureRecognizer) {
        if selected > 9 {
            text = FULL_SELECTED
            font = UIFont(name: "Menlo-Regular", size: 9.0)
            selected = 0
        } else {
            text = "\(selected)"
            font = UIFont(name: "Menlo-Regular", size: 18.0)
        }

        selected++
    }
    
    
    
}