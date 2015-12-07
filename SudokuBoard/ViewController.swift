//
//  ViewController.swift
//  SudokuBoard
//
//  Created by Fiaz Sami on 12/7/15.
//  Copyright © 2015 mobilemakers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let COLOR_BOARD = UIColor.purpleColor()

    var board: Board!

    override func viewDidLoad() {
        super.viewDidLoad()
        board = Board()
        board.translatesAutoresizingMaskIntoConstraints = false
        board.backgroundColor = COLOR_BOARD
        self.view.addSubview(board)
    }

    override func viewDidLayoutSubviews() {

        var vflIndex = [String: UIView]()
        vflIndex["board"] = board

        self.view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-0-[board(\(self.view.frame.width))]", options: [], metrics: nil, views: vflIndex))
        self.view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|-20-[board(\(self.view.frame.width))]", options: [], metrics: nil, views: vflIndex))
    }
    
}


