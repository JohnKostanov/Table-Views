//
//  Emoji.swift
//  Table Views
//
//  Created by  Джон Костанов on 30/07/2019.
//  Copyright © 2019 John Kostanov. All rights reserved.
//

import Foundation

struct Emoji: Codable {
    var symbol: String
    var name: String
    var description: String
    var usage: String
    
    init(symbol: String = "", name: String = "", description: String = "", usage: String = "") {
        self.symbol = symbol
        self.name = name
        self.description = description
        self.usage = usage
    }
}

extension Emoji {
    static var all: [Emoji] {
        return [
            Emoji(symbol: "😀", name: "Улыбка", description: "Улыбающийся смайлик", usage: "Когда хорошее настроение"),
            Emoji(symbol: "😍", name: "Влюблен", description: "С сердечками в глазах", usage: "Когда влюблен"),
            Emoji(symbol: "😎", name: "Все путем", description: "Смайлик с очками", usage: "Когда ты крут"),
            Emoji(symbol: "😠", name: "Злой", description: "Сердитое лицо", usage: "Когда злишься"),
        ]
    }
    
    
    static func loadDefaults() -> [Emoji] {
        return all
    }
}
