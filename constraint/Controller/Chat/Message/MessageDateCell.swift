//
//  MessageDateCell.swift
//  constraint
//
//  Created by Thiem Jason on 7/3/21.
//

import UIKit

class MessageDateCell: UITableViewCell {
    public static let identifier = "MessageDateCell"

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
