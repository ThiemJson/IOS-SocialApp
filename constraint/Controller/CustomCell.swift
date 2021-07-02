//
//  CustomCell.swift
//  constraint
//
//  Created by Teneocto on 02/07/2021.
//

import UIKit

class CustomCell: UICollectionViewCell {
    public static let identifier = "CustomCell"
    @IBOutlet weak var imageView: UIImageView!{
        didSet{
            imageView.layer.cornerRadius = imageView.frame.size.height / 5
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
}
