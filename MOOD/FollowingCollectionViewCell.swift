//
//  FollowingCollectionViewCell.swift
//  MOOD
//
//  Created by Zain on 2024-02-29.
//

import UIKit

struct Following {
    let imageFollowing: String
    let labelTitle: String
}

class FollowingCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imgFollowing: UIImageView!
    @IBOutlet weak var lblTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        imgFollowing.layer.masksToBounds = true
        imgFollowing.layer.cornerRadius = imgFollowing.frame.height / 2
    }
    
    func Configure(data: Following){
        self.imgFollowing.image = UIImage(named: data.imageFollowing)
        self.lblTitle.text = data.labelTitle
    }

}
