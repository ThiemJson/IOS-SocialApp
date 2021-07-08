//
//  FriendController.swift
//  constraint
//
//  Created by Thiem Jason on 7/3/21.
//

import UIKit

class FriendController: UIViewController {
    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var sectionName: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableViewSetup()
    }
}

// MARK: UITableView Delegate, Datasource
extension FriendController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: FriendCell.identifier, for: indexPath) as! FriendCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 12
    }
    
    private func tableViewSetup(){
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.tableView.register(UINib(nibName: FriendCell.identifier, bundle: nil), forCellReuseIdentifier: FriendCell.identifier)
    }
}
