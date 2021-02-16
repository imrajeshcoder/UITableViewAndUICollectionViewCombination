//
//  FDLImagesCollectionViewCell.swift
//  foodListing
//
//  Created by Vijay on 16/02/21.
//

import UIKit

class FDLImagesCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imgImageDisplayInCollection : UIImageView!
    
    override func layoutSubviews() {
        imgImageDisplayInCollection.layer.cornerRadius = 6
        //print("Layout Sub VIEW")
    }
    
}
