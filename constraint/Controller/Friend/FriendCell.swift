//
//  FriendCell.swift
//  constraint
//
//  Created by Teneocto on 07/07/2021.
//

import UIKit

class FriendCell: UITableViewCell {
    public static let identifier = "FriendCell"
    
    @IBOutlet weak var cellRow: UIView!
    @IBOutlet weak var userImage: UIImageView!{
        didSet{
            userImage.layer.cornerRadius = userImage.frame.size.height / 2
            userImage.clipsToBounds = true
        }
    }
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var lastDate: UILabel!
    @IBOutlet weak var acceptBtn: UIButton!{
        didSet{
            acceptBtn.layer.cornerRadius = acceptBtn.frame.size.height / 8
            acceptBtn.clipsToBounds = true
            acceptBtn.layer.borderWidth = 1
            acceptBtn.layer.borderColor = UIColor.systemBlue.cgColor
            acceptBtn.tintColor = UIColor.systemBlue
        }
    }
    @IBOutlet weak var rejectBtn: UIButton!{
        didSet{
            rejectBtn.layer.cornerRadius = rejectBtn.frame.size.height / 8
            rejectBtn.clipsToBounds = true
            rejectBtn.layer.borderWidth = 1
            rejectBtn.layer.borderColor = UIColor.systemGray3.cgColor
            rejectBtn.tintColor = UIColor.systemGray3
        }
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
