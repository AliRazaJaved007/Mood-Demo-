//
//  DiscoverTableViewCell.swift
//  MOOD
//
//  Created by Zain on 2024-03-05.
//

import UIKit

struct Discover {
    let imageMain: String
    let imageLeft: String
    let imageRight: String
    let labelTitle: String
    let labelDate: String
    let labelDescription: String
    let labelColor: String
    let image1: String
    let image2: String
    let image3: String
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
    
    func configure(data: Discover){
        self.imgMain.image = UIImage(named: data.imageMain)
        self.imgLeft.image = UIImage(named: data.imageLeft)
        self.imgRight.image = UIImage(named: data.imageRight)
        
        self.lblTitle.text = data.labelTitle
        self.lblDate.text = data.labelDate
        self.lblDescription.text = data.labelDescription
        self.lblColor.text = data.labelColor
        
        self.img1.image = UIImage(named: data.image1)
        self.img2.image = UIImage(named: data.image2)
        self.img3.image = UIImage(named: data.image3)
        
    }
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
