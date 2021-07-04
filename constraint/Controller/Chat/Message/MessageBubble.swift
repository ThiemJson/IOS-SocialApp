//
//  MessageBubble.swift
//  constraint
//
//  Created by Thiem Jason on 7/3/21.
//

import UIKit

class MessageBubble: UITableViewCell {
    public static let identifier = "MessageBubble"
    @IBOutlet weak var userImage: UIImageView! {
        didSet{
            userImage.layer.cornerRadius = userImage.frame.size.height / 2
            userImage.clipsToBounds = true
        }
    }
    
    @IBOutlet weak var messageBox: UIView!
    @IBOutlet weak var messageText: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
