//
//  UIImage+Load.swift
//  GitHubUsers
//
//  Created by Tatsiana on 7/21/20.
//  Copyright © 2020 Tatsiana. All rights reserved.
//
import UIKit

extension UIImageView {
    /**
     Gets the image from the given URL.
     - Parameter url: URL of the image.
     */
    func load(from url: String) {
        let url = URL(string: url)!

        DispatchQueue.global().async {
            if let data = try? Data(contentsOf: url.absoluteURL) {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self.image = image
                    }
                }
            }
        }
    }
}
