//
//  CellManager.swift
//  Table Views
//
//  Created by  Джон Костанов on 30/07/2019.
//  Copyright © 2019 John Kostanov. All rights reserved.
//

import UIKit

class CellManager {
    func configure(_ cell: UITableViewCell, with emoji: Emoji) {
        cell.textLabel?.text = emoji.symbol
        cell.detailTextLabel?.text = emoji.name
    }
}
