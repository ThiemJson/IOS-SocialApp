//
//  ProfileHeaderCell.swift
//  constraint
//
//  Created by Teneocto on 05/07/2021.
//

import UIKit

class ProfileHeaderCell: UITableViewCell {
    
    @IBOutlet weak var changeAvatart: UIButton!{
        didSet{
            changeAvatart.layer.cornerRadius = changeAvatart.frame.size.height / 5
            changeAvatart.layer.borderWidth = 1
            changeAvatart.layer.borderColor = UIColor.systemGray3.cgColor
            changeAvatart.clipsToBounds = true
        }
    }
    @IBOutlet weak var deleteAvatar: UIButton!{
        didSet{
            deleteAvatar.layer.cornerRadius = deleteAvatar.frame.size.height / 5
            deleteAvatar.layer.borderWidth = 1
            deleteAvatar.layer.borderColor = UIColor.systemRed.cgColor
            deleteAvatar.clipsToBounds = true
        }
    }
    @IBOutlet weak var userImage: UIImageView! {
        didSet{
            userImage.layer.cornerRadius = layer.frame.size.height / 2
            userImage.clipsToBounds = true
        }
    }
    
    
    @IBAction func changAvatarPrressed(_ sender: Any) {
    }
    @IBAction func deleteAvartiaPresed(_ sender: Any) {
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
