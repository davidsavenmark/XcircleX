//
//  CrossCircleCross.swift
//  CrossCircleCross
//
//  Created by David Sävenmark on 2020-12-26.
//  Copyright © 2020 David Sävenmark. All rights reserved.
//

import Foundation

struct CrossCircleCross {
    
    var piecesBox: Set<Piece> = [
        Piece (col: 0, row: 1, player: .X),
        Piece (col: 1, row: 1, player: .O),
    ]
    
    func pieceAt (col: Int, row: Int) -> Piece? {
        for piece in piecesBox {
            if piece.col == col && piece.row == row{
                return piece
            }
        }
        return nil
    }
}

extension CrossCircleCross: CustomStringConvertible {
    var description: String {
        var desc = ""
        
        for i in 0..<3{
            let row = 2 - i
            desc += "\(row)"
            for col in 0..<3 {
                if let piece = pieceAt(col: col, row: row) {
                    desc += piece.player.isX() ? " X" : " O"
                }else{
                 desc += " ."
                }
                    
            }
            desc += "\n"
            
        }
        desc += "  0 1 2"
        
        
        return desc
        
    }
}
