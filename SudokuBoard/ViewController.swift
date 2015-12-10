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
    var statusBarSpacing: CGFloat!
    var boardWidth: CGFloat!
    var boardConstraints: [[NSLayoutConstraint]]!

    override func viewDidLoad() {
        super.viewDidLoad()
        boardConstraints = [[NSLayoutConstraint]]()

        vflIndex = [String: UIView]()

        board = Board()
        view.addSubview(board)
        vflIndex["board"] = board
    }

    override func viewDidLayoutSubviews() {
        for c in boardConstraints {
            view.removeConstraints(c)
        }
        
        if UIDeviceOrientationIsLandscape(UIDevice.currentDevice().orientation) {
            statusBarSpacing = 0
            boardWidth = view.frame.height
        } else {
            statusBarSpacing = UIApplication.sharedApplication().statusBarFrame.height
            boardWidth = view.frame.width
        }

        let hConstraint = NSLayoutConstraint.constraintsWithVisualFormat("H:|-0-[board(\(boardWidth))]", options: [], metrics: nil, views: vflIndex)
        let vConstraint = NSLayoutConstraint.constraintsWithVisualFormat("V:|-\(statusBarSpacing)-[board(\(boardWidth))]", options: [], metrics: nil, views: vflIndex)

        boardConstraints.append(hConstraint)
        boardConstraints.append(vConstraint)
        view.addConstraints(hConstraint)
        view.addConstraints(vConstraint)
    }
    
}


