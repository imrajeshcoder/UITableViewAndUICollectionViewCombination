//
//  FDLImagesTableViewCell.swift
//  foodListing
//
//  Created by Vijay on 16/02/21.
//

import UIKit

class FDLImagesTableViewCell: UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegate {
    
    

    @IBOutlet weak var clcOutletImages: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        clcOutletImages.dataSource = self
        clcOutletImages.delegate = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageData[clcOutletImages.tag].ImageGallery.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = clcOutletImages.dequeueReusableCell(withReuseIdentifier: "FDLImagesCollectionViewCell", for: indexPath) as! FDLImagesCollectionViewCell
        cell.imgImageDisplayInCollection.image = UIImage(named: imageData[clcOutletImages.tag].ImageGallery[indexPath.row])
        
        return cell
    }

}
