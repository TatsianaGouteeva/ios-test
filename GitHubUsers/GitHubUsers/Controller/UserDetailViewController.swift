//
//  UserDetailViewController.swift
//  GitHubUsers
//
//  Created by Tatsiana on 7/21/20.
//  Copyright © 2020 Tatsiana. All rights reserved.
//

import UIKit

class UserDetailViewController: UIViewController {

    // MARK: - IBOutlet
    @IBOutlet var avatarImage: UIImageView!
    @IBOutlet var loginLabel: UILabel!
    @IBOutlet var gitHubLinkLabel: UILabel!

    // MARK: - Properties
    var selectedUser: User?

    // MARK: - Instance Methods
    override func viewDidLoad() {
        super.viewDidLoad()

        if let user = selectedUser {
            loginLabel.text = user.login
            gitHubLinkLabel.text = user.gitHubURLString
            avatarImage.load(from: user.avatarURLString)
        }
    }

    // MARK: IBAction
    @IBAction func cancelList(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
