//
//  ProfileHeaderCell.swift
//  constraint
//
//  Created by Teneocto on 05/07/2021.
//

import UIKit

class ProfileHeaderCell: UITableViewCell {
    public static let identifier = "ProfileHeaderCell"
    
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
            deleteAvatar.tintColor = .red
            deleteAvatar.layer.borderColor = UIColor.systemRed.cgColor
            deleteAvatar.clipsToBounds = true
        }
    }
    @IBOutlet weak var userImage: UIImageView! {
        didSet{
            userImage.layer.cornerRadius = userImage.layer.frame.size.height / 2
            userImage.clipsToBounds = true
        }
    }
    
    
    @IBAction func changAvatarPrressed(_ sender: Any) {
    }
    @IBAction func deleteAvartiaPresed(_ sender: Any) {
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
