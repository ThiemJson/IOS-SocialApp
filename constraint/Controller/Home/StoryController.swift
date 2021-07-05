//
//  StoryController.swift
//  constraint
//
//  Created by Teneocto on 02/07/2021.
//

import UIKit

class StoryController: UIViewController {

    @IBOutlet weak var image: UIImageView! {
        didSet{
            image.layer.cornerRadius = image.frame.size.height / 12
            image.clipsToBounds = true
        }
    }
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var bottomView: UIView!
    @IBOutlet weak var tableViewHeight: NSLayoutConstraint!
    
    @IBOutlet weak var commentTextField: UITextField! {
        didSet{
            commentTextField.layer.cornerRadius = commentTextField.frame.size.height / 4
            commentTextField.layer.borderWidth = 1
            commentTextField.layer.borderColor = UIColor.systemGray6.cgColor
            commentTextField.clipsToBounds = true
        }
    }
    
    deinit {
        self.tableView.removeObserver(self, forKeyPath: "contentSize")
    }
    
    @IBOutlet weak var sendButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUpTableView()
    }

    override func viewWillDisappear(_ animated: Bool) {
        self.tabBarController?.tabBar.isHidden = false
    }
}
// MARK: View setup
extension StoryController {
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.prefersLargeTitles = false
        self.title = "Nguyen Cao Thiem"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.tabBarController?.tabBar.isHidden = true
    }
    
    override func observeValue(forKeyPath keyPath: String?, of object: Any?,
                               change: [NSKeyValueChangeKey : Any]?,
                               context: UnsafeMutableRawPointer?) {
        
        if let obj = object as? UITableView,
           obj == self.tableView &&
            keyPath == "contentSize" {
            print("resize")
            print("contentSize \(tableView.contentSize.height)")
            
            self.tableViewHeight.constant = tableView.contentSize.height
        }
    }
}

// MARK: Send message
extension StoryController {
    @IBAction func sendPressed(_ sender: UIButton) {
    }
}

// MARK: TableView Delegate, Datasource
extension StoryController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 14
    }
    
    private func setUpTableView(){
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.tableView.showsVerticalScrollIndicator = false
        self.tableView.showsHorizontalScrollIndicator = false
        self.tableView.separatorStyle = .none
        self.tableView.register(UINib(nibName: Comment.identifier, bundle: nil), forCellReuseIdentifier: Comment.identifier)
        self.tableView.addObserver(self, forKeyPath: "contentSize", options: .new, context: nil)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: Comment.identifier, for: indexPath)
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.tableView.deselectRow(at: indexPath, animated: true)
    }
}
