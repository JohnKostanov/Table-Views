//
//  EmojiTableViewController.swift
//  Table Views
//
//  Created by  Джон Костанов on 30/07/2019.
//  Copyright © 2019 John Kostanov. All rights reserved.
//

import UIKit

class EmojiTableViewController: UITableViewController {
    
    // MARK: - Properties
    let cellManager = CellManager()
    var emojis: [Emoji]!
    
    // MARK: - UIViewController Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        emojis = Emoji.loadAll() ?? Emoji.loadDefaults()
        navigationItem.leftBarButtonItem = editButtonItem
    }
}
// MARK: - UITableViewDataSource
extension EmojiTableViewController /*: UITableViewDataSource */ {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let emoji = emojis[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "EmojiCell")! as! EmojiCell
        
        cellManager.configure(cell, with: emoji)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let movedEmoji = emojis.remove(at: sourceIndexPath.row)
        emojis.insert(movedEmoji, at: destinationIndexPath.row)
        tableView.reloadData()
    }
}
