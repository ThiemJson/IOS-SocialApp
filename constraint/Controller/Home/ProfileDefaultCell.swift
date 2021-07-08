//
//  ProfileDefaultCell.swift
//  constraint
//
//  Created by Teneocto on 05/07/2021.
//

import UIKit

class ProfileDefaultCell: UITableViewCell {
    public static let identifier = "ProfileDefaultCell"

    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
