//
//  CellManager.swift
//  Table Views
//
//  Created by  Джон Костанов on 30/07/2019.
//  Copyright © 2019 John Kostanov. All rights reserved.
//

import UIKit

class CellManager {
    func configure(_ cell: EmojiCell, with emoji: Emoji) {
        cell.symbolLabel.text = emoji.symbol
        cell.nameLabel.text = emoji.name
        cell.descriptionLabel.text = emoji.description
    }
}
