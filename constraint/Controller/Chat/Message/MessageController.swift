//
//  MessageController.swift
//  constraint
//
//  Created by Thiem Jason on 7/3/21.
//

import UIKit

class MessageController: UIViewController {
    let bottomView : UIView = {
        let uiView = UIView()
        uiView.translatesAutoresizingMaskIntoConstraints = false
        return uiView
    }()
    
    let tableView : UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    let sendImage : UIImageView = {
       let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    let messageTextField : UITextField = {
       let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUpNavigation()
        self.setUpBottom()
    }
    
//    override func viewWillAppear(_ animated: Bool) {
//        self.tabBarController?.tabBar.isHidden = true
//    }
//
//    override func viewWillDisappear(_ animated: Bool) {
//        self.tabBarController?.tabBar.isHidden = false
//    }
}

// MARK: - UITableView Delegate, Datasource
extension MessageController : UITableViewDelegate, UITableViewDataSource {
    private func setUpTableView(){
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        return cell
    }
}

// MARK: - Bottom
extension MessageController {
    private func setUpBottom(){
        view.addSubview(bottomView)
        
        bottomView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        bottomView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        bottomView.bottomAnchor.constraint(equalTo:  view.bottomAnchor).isActive = true
        bottomView.backgroundColor = UIColor.red
        
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .fill
        stackView.spacing = 12.0
        bottomView.addSubview(stackView)
        
        stackView.topAnchor.constraint(equalTo: bottomView.topAnchor, constant: 10.0).isActive = true
        stackView.bottomAnchor.constraint(equalTo: bottomView.bottomAnchor, constant: -10.0).isActive = true
        stackView.leadingAnchor.constraint(equalTo: bottomView.leadingAnchor, constant: 10.0).isActive = true
        stackView.trailingAnchor.constraint(equalTo: bottomView.trailingAnchor, constant: -10.0).isActive = true
        
        let messageView = UIView()
        messageView.translatesAutoresizingMaskIntoConstraints = false
        messageView.heightAnchor.constraint(greaterThanOrEqualToConstant: 40).isActive = true
    
        stackView.addSubview(messageView)
        stackView.addSubview(sendImage)
        
        sendImage.heightAnchor.constraint(equalToConstant: 40).isActive = true
        sendImage.widthAnchor.constraint(equalToConstant: 40).isActive = true
        sendImage.image = UIImage(systemName: "paperplane.fill")
        sendImage.tintColor = UIColor.systemBlue
        messageView.addSubview(messageTextField)
        
        messageTextField.topAnchor.constraint(equalTo: messageView.topAnchor, constant: 10.0).isActive = true
        messageTextField.bottomAnchor.constraint(equalTo: messageView.bottomAnchor, constant: -10.0).isActive = true
        messageTextField.trailingAnchor.constraint(equalTo: messageView.trailingAnchor, constant: -10.0).isActive = true
        messageTextField.leadingAnchor.constraint(equalTo: messageView.leadingAnchor, constant: 10.0).isActive = true
        
        messageTextField.placeholder = "Aa.."
        messageTextField.textColor = UIColor.systemGray3
        messageTextField.font = UIFont.systemFont(ofSize: 13.0)
        messageTextField.textAlignment = NSTextAlignment.left
        messageTextField.layer.cornerRadius = messageTextField.frame.size.height / 4
        messageTextField.clipsToBounds = true
        messageTextField.layer.borderWidth = 1
        messageTextField.layer.borderColor = UIColor.systemGray3.cgColor
        
        print(bottomView.frame)
    }
}

// MARK: - SetUp Navigation
extension MessageController {
    private func setUpNavigation(){
        self.title = "NguyenCaoThiem"
    }
}
