//
//  UIStoryboard+InstantiateViewController.swift
//  GitHubUsers
//
//  Created by Tatsiana on 7/21/20.
//  Copyright © 2020 Tatsiana. All rights reserved.
//

import UIKit

extension UIStoryboard {
    /**
     Creates and initializes the view controller with the specified identifier.
     - Parameter typeVC: The class type of the view controller.
     - Returns: The view controller or `nil` if no view controller
     has the given identifier.
     */
    func instantiateViewController<T: UIViewController>(of typeVC: T.Type) -> T? {
        return instantiateViewController(withIdentifier: typeVC.identifierVC) as? T
    }
}
