//
//  ViewController.swift
//  SudokuBoard
//
//  Created by Fiaz Sami on 12/7/15.
//  Copyright © 2015 mobilemakers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var board: Board!
    var vflIndex: [String: UIView]!

    override func viewDidLoad() {
        super.viewDidLoad()
        vflIndex = [String: UIView]()

        board = Board()
        self.view.addSubview(board)
        vflIndex["board"] = board
    }

    override func viewDidLayoutSubviews() {
        self.view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-0-[board(\(self.view.frame.width))]", options: [], metrics: nil, views: vflIndex))
        self.view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|-20-[board(\(self.view.frame.width))]", options: [], metrics: nil, views: vflIndex))
    }
    
}


