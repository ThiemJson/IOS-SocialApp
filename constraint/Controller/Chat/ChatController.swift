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
        
//        let newMessageButton = UIButton()
//        newMessageButton.translatesAutoresizingMaskIntoConstraints = false
//        newMessageButton.frame = CGRect(x: 10.0, y: 10.0, width: 40.0, height: 40.0)
//        view.addSubview(newMessageButton)
//
//        newMessageButton.setTitleColor(UIColor.systemBlue, for: .normal)
//        newMessageButton.backgroundColor = .gray
//        newMessageButton.clipsToBounds = true
//        newMessageButton.setTitle(NSLocalizedString("Connect", comment: ""), for: .normal)
//        newMessageButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16.0).isActive = true
//        newMessageButton.bottomAnchor.constraint(equalTo: self.tableView.topAnchor, constant: -10.0).isActive = true
//        newMessageButton.addTarget(self, action: #selector(editTapped), for: .touchUpInside)
//        print(newMessageButton.frame)
//        view.bringSubviewToFront(newMessageButton)
    }
    
    override func viewWillAppear(_ animated: Bool) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "messageSegue" {
            
        }
    }
}

// MARK: - SetUp View
extension ChatController {
    func setUpView(){
        self.title = "Chat"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationController?.navigationBar.prefersLargeTitles = false
    }
    
    @objc func editTapped() -> Void {
        // TODO
    }
}

// MARK: - TableView Delegate, Datasource
extension ChatController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "messageSegue" , sender: self)
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
