//
//  GitHubUsersViewController.swift
//  GitHubUsers
//
//  Created by Tatsiana on 7/21/20.
//  Copyright © 2020 Tatsiana. All rights reserved.
//

import UIKit

class GitHubUsersViewController: UIViewController {

    // MARK: - IBOutlet
    @IBOutlet weak var tableView: UITableView!

    // MARK: - Properties
    var users = [User]()

    // MARK: - Instance Methods
    override func viewDidLoad() {
        super.viewDidLoad()

        UserDataSource().getUsers { users in
            self.users = users
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
}

// MARK: - Extensions
extension GitHubUsersViewController: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        guard let cell = tableView.dequeueCell(of: GitHubUsersTableViewCell.self) else {
            return UITableViewCell()
        }

        cell.loginLabel.text = users[indexPath.row].login
        cell.avatarImage.load(from: users[indexPath.row].avatarURLString)

        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)

        guard let userDetailViewController = storyboard.instantiateViewController(of: UserDetailViewController.self) else {
            fatalError()
        }

        userDetailViewController.selectedUser = users[indexPath.row]
        present(userDetailViewController, animated: false, completion: nil)
    }
}
