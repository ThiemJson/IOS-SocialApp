//
//  ChatCell.swift
//  constraint
//
//  Created by Thiem Jason on 7/3/21.
//

import UIKit

class ChatCell: UITableViewCell {
    public static let identifier = "ChatCell"
    
    
    @IBOutlet weak var userMessage: UILabel!
    @IBOutlet weak var userImage: UIImageView!{
        didSet{
            userImage.layer.cornerRadius = userImage.frame.size.height / 2
            userImage.clipsToBounds = true
        }
    }
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var latestData: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.selectionStyle = .none
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
