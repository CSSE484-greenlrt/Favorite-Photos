//
//  PhotoViewCell.swift
//  Favorite Photos
//
//  Created by Ryan Greenlee on 5/1/18.
//  Copyright © 2018 Ryan Greenlee. All rights reserved.
//

import UIKit
import Firebase

class PhotoViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var captionLabel: UILabel!
    
    func display(snapshot: DocumentSnapshot) {
        if let url = snapshot.get("url") as? String {
            ImageUtils.load(imageView: imageView, from: url)
        }
        if let caption = snapshot.get("caption") as? String {
            captionLabel.text = caption
        }
    }
}
