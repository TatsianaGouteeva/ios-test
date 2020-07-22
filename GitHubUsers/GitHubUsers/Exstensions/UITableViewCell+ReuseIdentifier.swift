//
//  UITableViewCell+ReuseIdentifier.swift
//  GitHubUsers
//
//  Created by Tatsiana on 7/21/20.
//  Copyright © 2020 Tatsiana. All rights reserved.
//

import UIKit

extension UITableViewCell {
    /**
     A string used to identify a cell that is reusable.
     */
    static var reuseIdentifier: String {
        return "\(self)"
    }
}
