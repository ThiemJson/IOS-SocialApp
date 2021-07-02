//
//  Post.swift
//  constraint
//
//  Created by Teneocto on 02/07/2021.
//

import UIKit

class Post: UIView {
    @IBOutlet var contentView : UIView!
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setUpView()
    }
    
    private func setUpView(){
        Bundle.main.loadNibNamed("Post", owner: self, options: nil)
        self.addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }
}
