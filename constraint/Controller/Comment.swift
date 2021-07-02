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
            userImage.layer.cornerRadius = userImage.frame.size.height / 2
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
    
    
    @IBAction func replyPressed(_ sender: Any) {
        DispatchQueue.main.async {
            self.commentText.text?.append( "Label qwe qwe qjkweh kqwh keqwk jhkqwjhk eqjhwk ejqw kje Label qwe qwe qjkweh kqwh keqwk jhkqwj qjkweh kqwh keqwk jhkqwjhk eqjhwk ejqw kje ")
            
            let fixedWidth = self.commentText.frame.size.width
            let newSize = self.commentText.sizeThatFits(CGSize(width: fixedWidth, height: CGFloat.greatestFiniteMagnitude))
            self.commentText.frame.size = CGSize(width: max(newSize.width, fixedWidth), height: newSize.height)
        }
    }
}
