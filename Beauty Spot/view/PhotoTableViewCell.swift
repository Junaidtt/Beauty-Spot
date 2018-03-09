//
//  PhotoTableViewCell.swift
//  FirebasePhotos
//
//  Created by Duc Tran on 10/9/17.
//  Copyright © 2017 Duc Tran. All rights reserved.
//

import UIKit

class PhotoTableViewCell: UITableViewCell {

    @IBOutlet weak var postImageView: UIImageView!
    @IBOutlet weak var captionLabel: UILabel!
    @IBOutlet weak var shadowBackgroundView: UIView!
    
    func updateUI() {
        // Set shadow background view
        shadowBackgroundView.layer.shadowPath = UIBezierPath(rect: shadowBackgroundView.bounds).cgPath
        shadowBackgroundView.layer.shadowColor = UIColor.black.cgColor
        shadowBackgroundView.layer.shadowOpacity = 0.1
        shadowBackgroundView.layer.shadowOffset = CGSize(width: 2, height: 2)
        shadowBackgroundView.layer.shadowRadius = 2
        shadowBackgroundView.layer.masksToBounds = false
        shadowBackgroundView.layer.cornerRadius = 3.0
    }

}
















