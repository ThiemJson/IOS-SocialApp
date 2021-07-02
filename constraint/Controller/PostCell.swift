//
//  PostCell.swift
//  constraint
//
//  Created by Teneocto on 02/07/2021.
//

import UIKit

class PostCell: UITableViewCell {
    public static let identidier = "PostCell"
    
    @IBOutlet weak var customView: UIView!{
        didSet{
            customView.layer.cornerRadius = 15
            customView.layer.borderColor = UIColor.systemGray6.cgColor
            customView.layer.borderWidth = 1
        }
    }
    @IBOutlet weak var userImage: UIImageView!{
        didSet{
            userImage.layer.cornerRadius = userImage.frame.size.height / 2
            userImage.clipsToBounds = true
            userImage.image = UIImage(named: "user")
        }
    }
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var followBtn: UIButton!{
        didSet{
            followBtn.backgroundColor = .white
            followBtn.layer.cornerRadius = followBtn.frame.size.height / 7
            followBtn.layer.borderWidth = 1
            followBtn.layer.borderColor = UIColor.systemBlue.cgColor
        }
    }
    @IBOutlet weak var timeOnline: UILabel!
    @IBOutlet weak var tags: UILabel!
    @IBOutlet weak var subImage2: UIImageView!{
        didSet{
            subImage2.image = UIImage(named: "user")
        }
    }
    @IBOutlet weak var subImage1: UIImageView!{
        didSet{
            subImage1.image = UIImage(named: "user")
        }
    }
    @IBOutlet weak var bio: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
