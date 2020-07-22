//
//  UIViewController+IdentifierVC.swift
//  GitHubUsers
//
//  Created by Tatsiana on 7/21/20.
//  Copyright © 2020 Tatsiana. All rights reserved.
//

import UIKit

extension UIViewController {
    /**
     A string used to identify `UIViewController` in storyboard file.
     */
    static var identifierVC: String {
        return "\(self)"
    }
}
