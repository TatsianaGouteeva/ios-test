//
//  UITableView+ReusableCell.swift
//  GitHubUsers
//
//  Created by Tatsiana on 7/21/20.
//  Copyright © 2020 Tatsiana. All rights reserved.
//
//
//  UITableView+ReusableCell.swift
//  GitHubUsers
//
//  Created by Tatsiana on 7/21/20.
//  Copyright © 2020 Tatsiana. All rights reserved.
//

import UIKit

extension UITableView {
    /**
     Dequeues an existing available cell or creates
     a new one using the class or nib file you previously registered.
     A queue used to store table view cells and is created
     when register a cell for a table view.
     A queue is stored in memory.
     When the cell scrolls off the screen, it'll be placed into a queue
     of the specified type cells available to be reuse.
     - Parameter typeCell: The class type of the cell to dequeue.
     - Returns: The reusable cell or `nil` if no cell is available
     for reuse and you did not register a class or nib file.
     */
    func dequeueCell<T: UITableViewCell>(of typeCell: T.Type) -> T? {
        return dequeueReusableCell(withIdentifier: typeCell.reuseIdentifier) as? T
    }
}
