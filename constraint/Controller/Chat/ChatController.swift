//
//  ChatController.swift
//  constraint
//
//  Created by Thiem Jason on 7/2/21.
//

import UIKit

class ChatController: UIViewController {
    let tableView : UITableView = {
        let tableview = UITableView()
        tableview.translatesAutoresizingMaskIntoConstraints = false
        return tableview
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUpView()
        self.setUpTableView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
    }
}

// MARK: - SetUp View
extension ChatController {
    func setUpView(){
        self.title = "Chat"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
    }
}

// MARK: - TableView Delegate, Datasource
extension ChatController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  self.tableView.dequeueReusableCell(withIdentifier: ChatCell.identifier, for: indexPath) as! ChatCell
        return cell
    }
    
    private func setUpTableView(){
        view.addSubview(self.tableView)
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.showsVerticalScrollIndicator = false
        tableView.showsHorizontalScrollIndicator = false
        
        tableView.register(UINib(nibName: ChatCell.identifier, bundle: nil), forCellReuseIdentifier: ChatCell.identifier)
    }
}
