//
//  Tile.swift
//  SudokuBoard
//
//  Created by Fiaz Sami on 12/7/15.
//  Copyright © 2015 mobilemakers. All rights reserved.
//

import UIKit

class Tile: UILabel {

    let fullSelected = "1 2 3\n4 5 6\n7 8 9"

    var selected: Int = 1

    override init(frame: CGRect) {
        super.init(frame: frame)

        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = UIColor.gray
        textColor = UIColor.white
        textAlignment = NSTextAlignment.center
        font = UIFont(name: "Menlo-Regular", size: 9.0)
        numberOfLines = 0
        lineBreakMode = NSLineBreakMode.byWordWrapping
        isUserInteractionEnabled = true

        addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(Tile.updateLabel(_:))))
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    func updateLabel(_ recognizer: UITapGestureRecognizer) {
        if selected > 9 {
            text = fullSelected
            font = UIFont(name: "Menlo-Regular", size: 9.0)
            selected = 0
        } else {
            text = "\(selected)"
            font = UIFont(name: "Menlo-Regular", size: 18.0)
        }

        selected += 1
    }
    
    
    
}
