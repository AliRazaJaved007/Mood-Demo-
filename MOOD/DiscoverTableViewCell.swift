//
//  DiscoverTableViewCell.swift
//  MOOD
//
//  Created by Zain on 2024-03-05.
//

import UIKit

struct DiscoverFeed: Codable {
    let current_page: Int
    let data: [Discover]
    let first_page_url: String
    let from: Int
    let last_page: Int
    let last_page_url: String
    var next_page_url: String?
    let path: String
    let per_page: Int
    var prev_page_url: String?
    let to: Int
    let total: Int
}

struct Discover: Codable {
    var id: Int?
}

class DiscoverTableViewCell: UITableViewCell {
    @IBOutlet weak var imgMain: UIImageView!
    @IBOutlet weak var imgLeft: UIImageView!
    @IBOutlet weak var imgRight: UIImageView!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblDate: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    @IBOutlet weak var lblColor: UILabel!
    @IBOutlet weak var img1: UIImageView!
    @IBOutlet weak var img2: UIImageView!
    @IBOutlet weak var img3: UIImageView!
    @IBOutlet weak var smallImage: UIImageView!
    @IBOutlet weak var btnJoin: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configureUI()
    }
    
    func configureUI(){
        imgMain.layer.cornerRadius = imgMain.frame.height / 2
        imgMain.layer.masksToBounds = true
        imgLeft.layer.cornerRadius = imgLeft.frame.height / 2
        imgLeft.layer.masksToBounds = true
        imgRight.layer.cornerRadius = imgRight.frame.height / 2
        imgRight.layer.masksToBounds = true
        
        img1.layer.cornerRadius = img1.frame.height / 2
        img1.layer.masksToBounds = true
        img1.layer.borderWidth = 1
        img1.layer.borderColor = UIColor.orange.cgColor
        
        img2.layer.cornerRadius = img2.frame.height / 2
        img2.layer.masksToBounds = true
        img2.layer.borderWidth = 1
        img2.layer.borderColor = UIColor.orange.cgColor
        
        img3.layer.cornerRadius = img3.frame.height / 2
        img3.layer.masksToBounds = true
        img3.layer.borderWidth = 1
        img3.layer.borderColor = UIColor.orange.cgColor
        
        smallImage.layer.cornerRadius = smallImage.frame.height / 2
        smallImage.layer.masksToBounds = true
        
        btnJoin.layer.cornerRadius = 12
        btnJoin.clipsToBounds = true
        
    }
    
//    func configure(data: Diiscover) {
//        self.imgMain.image = UIImage(named: data.activity_picture)
//        self.lblTitle.text = data.activity_title
//        self.lblDescription.text = data.activity_address
//        self.lblColor.text = data.activity_type
//        
//    }
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
