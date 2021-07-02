//
//  Comment.swift
//  constraint
//
//  Created by Teneocto on 02/07/2021.
//

import UIKit

class Comment: UITableViewCell {
    public static let identifier = "Comment"
    
    @IBOutlet weak var userImage: UIImageView! {
        didSet{
            userImage.layer.contents = userImage.frame.size.height / 2
        }
    }
    
    @IBOutlet weak var userName: UIImageView!
    
    @IBOutlet weak var timeOnline: UILabel!
    
    @IBOutlet weak var replyButton: UIButton!
    @IBOutlet weak var commentText: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
