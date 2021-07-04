//
//  MessageController.swift
//  constraint
//
//  Created by Thiem Jason on 7/3/21.
//

import UIKit

class MessageController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var messageEdt: UITextField! {
        didSet{
            messageEdt.layer.cornerRadius = 10.0
            messageEdt.clipsToBounds = true
            messageEdt.layer.borderColor = UIColor.systemGray3.cgColor
            messageEdt.layer.borderWidth = 1
        }
    }
    
    @IBOutlet weak var sendButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUpNavigation()
        self.setUpTableView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.tabBarController?.tabBar.isHidden = true
    }

    override func viewWillDisappear(_ animated: Bool) {
        self.tabBarController?.tabBar.isHidden = false
    }
}

// MARK: - UITableView Delegate, Datasource
extension MessageController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.tableView.deselectRow(at: indexPath, animated: true)
    }
    private func setUpTableView(){
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.showsHorizontalScrollIndicator = false
        self.tableView.showsHorizontalScrollIndicator = false
        self.tableView.separatorStyle = .none
        self.tableView.register(UINib(nibName: MessageBubble.identifier, bundle: nil), forCellReuseIdentifier: MessageBubble.identifier)
        self.tableView.register(UINib(nibName: MessageDateCell.identifier, bundle: nil), forCellReuseIdentifier: MessageDateCell.identifier)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row % 2 == 0 {
            let cell = self.tableView.dequeueReusableCell(withIdentifier: MessageBubble.identifier, for: indexPath) as! MessageBubble
            return cell
        }
        let cell = self.tableView.dequeueReusableCell(withIdentifier: MessageDateCell.identifier, for: indexPath ) as! MessageDateCell
        return cell
    }
}

// MARK: - Bottom
extension MessageController {
    private func setUpBottom(){
//        view.addSubview(bottomView)
//
//        bottomView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
//        bottomView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
//        bottomView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0.0).isActive = true
//        bottomView.backgroundColor = UIColor.systemGray3
//
//        let stackView = UIStackView()
//        stackView.translatesAutoresizingMaskIntoConstraints = false
//        stackView.axis = .horizontal
//        stackView.alignment = .bottom
//        stackView.distribution = .fill
//        stackView.spacing = 12.0
//        bottomView.addSubview(stackView)
//
//        stackView.topAnchor.constraint(equalTo: bottomView.topAnchor, constant: 10.0).isActive = true
//        stackView.bottomAnchor.constraint(equalTo: bottomView.bottomAnchor, constant: -5.0).isActive = true
//        stackView.leadingAnchor.constraint(equalTo: bottomView.leadingAnchor, constant: 5.0).isActive = true
//        stackView.trailingAnchor.constraint(equalTo: bottomView.trailingAnchor, constant: -5.0).isActive = true
//
//        let messageView = UIView()
//        messageView.translatesAutoresizingMaskIntoConstraints = false
//        messageView.heightAnchor.constraint(greaterThanOrEqualToConstant: 45).isActive = true
//        messageView.backgroundColor = UIColor.systemBlue
//
//        stackView.addSubview(messageView)
//        stackView.addSubview(sendImage)
//
//        sendImage.heightAnchor.constraint(equalToConstant: 45.0).isActive = true
//        sendImage.widthAnchor.constraint(equalToConstant: 45.0).isActive = true
//        sendImage.image = UIImage(systemName: "paperplane.fill")
//        sendImage.tintColor = UIColor.systemBlue
//        messageView.addSubview(messageTextField)

//        messageTextField.topAnchor.constraint(equalTo: messageView.topAnchor, constant: 10.0).isActive = true
//        messageTextField.bottomAnchor.constraint(equalTo: messageView.bottomAnchor, constant: -10.0).isActive = true
//        messageTextField.trailingAnchor.constraint(equalTo: messageView.trailingAnchor, constant: -10.0).isActive = true
//        messageTextField.leadingAnchor.constraint(equalTo: messageView.leadingAnchor, constant: 10.0).isActive = true
//
//        messageTextField.placeholder = "Aa.."
//        messageTextField.textColor = UIColor.systemGray3
//        messageTextField.font = UIFont.systemFont(ofSize: 13.0)
//        messageTextField.textAlignment = NSTextAlignment.left
//        messageTextField.layer.cornerRadius = messageTextField.frame.size.height / 4
//        messageTextField.clipsToBounds = true
//        messageTextField.layer.borderWidth = 1
//        messageTextField.layer.borderColor = UIColor.systemGray3.cgColor

//        print(bottomView.frame)
    }
}

// MARK: - SetUp Navigation
extension MessageController {
    private func setUpNavigation(){
        self.title = "NguyenCaoThiem"
    }
}

// MARK: - Send Message
extension MessageController {
    @IBAction func sendPressed(_ sender: UIButton) {
        
    }
}
