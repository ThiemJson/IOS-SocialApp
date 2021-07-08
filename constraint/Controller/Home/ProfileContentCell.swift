//
//  ProfileContentCell.swift
//  constraint
//
//  Created by Teneocto on 07/07/2021.
//

import UIKit

class ProfileContentCell: UITableViewCell {
    public static let identifier = "ProfileContentCell"

    @IBOutlet weak var inputTextField: UITextField!
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
