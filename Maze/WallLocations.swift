//
//  WallLocations.swift
//  Maze
//
//  Created by Gabrielle Miller-Messner on 11/6/15.
//  Copyright © 2015 Udacity, Inc. All rights reserved.
//

import Foundation

extension ControlCenter {
    
    func isFacingWall(_ robot: ComplexRobotObject, direction: MazeDirection) -> Bool {
        
        let cell = mazeController.currentCell(robot)
        var isWall: Bool = false
        
        print("cell above robot?: \(cell.top)")
        print("cell below robot?: \(cell.bottom)")
        print("cell to left of robot?: \(cell.left)")
        print("cell to right of robot?: \(cell.right)")

        
            switch(direction) {
            case .up:
                    if cell.top {
                        isWall = true
                    }
            case .right:
                if cell.right {
                    isWall = true
                }
            case .down:
                if cell.bottom {
                    isWall = true
                }
            case .left:
                if cell.left {
                    isWall = true
                }
        
                }
        

        return isWall
    }
}
