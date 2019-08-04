//
//  DataManager.swift
//  Table Views
//
//  Created by  Джон Костанов on 04/08/2019.
//  Copyright © 2019 John Kostanov. All rights reserved.
//

import Foundation

class DataManager {
    var archiveURL: URL? {
        guard let documentDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first else { return nil }
       return documentDirectory.appendingPathComponent("emojis").appendingPathExtension("plist")
    }
    
    func loadEmojis() -> [Emoji]? {
        print(#line, #function, archiveURL ?? "nil")
        
//        let decoder = PropertyListDecoder()
//        if let decodedEmojis = try? decoder.decode([Emoji].self, from: encodedEmojis) {
//            print(#line, #function)
//            for (index, emoji) in decodedEmojis.enumerated() {
//                print(index, ":", emoji)
//            }
//            print()
//        }
        
        return nil
    }
    
    func saveEmojis(_ emojis: [Emoji]) {
        let encoder = PropertyListEncoder()
        guard let encodedEmojis = try? encoder.encode(emojis) else { return }
        guard let archiveURL = archiveURL else { return }
        
        try? encodedEmojis.write(to: archiveURL, options: .noFileProtection)
    }
}
