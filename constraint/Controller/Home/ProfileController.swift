//
//  ProfileController.swift
//  constraint
//
//  Created by Teneocto on 05/07/2021.
//

import UIKit

class ProfileController: UIViewController {
    let tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUpTableView()
        self.setUpView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.tabBarController?.tabBar.isHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.tabBarController?.tabBar.isHidden = false
    }
}

// MARK: Setup view
extension ProfileController {
    private func setUpView(){
        self.title = "My profile"
    }
}

// MARK:  UITableView Delegate, Datasource
extension ProfileController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        switch indexPath.section {
        case 0:
            // todo
            break
        case 1:
            switch indexPath.row {
            case 1:
                //todo
                performSegue(withIdentifier: "goToFriend", sender: self)
                break
            default:
                break
            }
        default:
            fatalError()
        }
        
        self.tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 5
        case 1:
            return 5
        default:
            fatalError()
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return ""
        case 1:
            return "Actions"
        default:
            fatalError()
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            switch indexPath.row {
            case 0:
                let topCell = self.tableView.dequeueReusableCell(withIdentifier: ProfileHeaderCell.identifier, for: indexPath)
                return topCell
            case 1:
                let firstNameCell = self.tableView.dequeueReusableCell(withIdentifier: ProfileContentCell.identifier, for: indexPath) as! ProfileContentCell
                firstNameCell.inputTextField.placeholder = "First name"
                return firstNameCell
            case 2:
                let cell = self.tableView.dequeueReusableCell(withIdentifier: ProfileContentCell.identifier, for: indexPath) as! ProfileContentCell
                cell.inputTextField.placeholder = "Second name"
                return cell
            case 3:
                let cell = self.tableView.dequeueReusableCell(withIdentifier: ProfileContentCell.identifier, for: indexPath) as! ProfileContentCell
                cell.inputTextField.placeholder = "Address"
                return cell
            case 4:
                let cell = self.tableView.dequeueReusableCell(withIdentifier: ProfileContentCell.identifier, for: indexPath) as! ProfileContentCell
                cell.inputTextField.placeholder = "Bio"
                return cell
            default:
                fatalError()
            }
            break
        case 1:
            switch indexPath.row {
            case 0 :
                let cell = self.tableView.dequeueReusableCell(withIdentifier: ProfileDefaultCell.identifier, for: indexPath)
                cell.textLabel?.text = "My posts"
                cell.accessoryType = .disclosureIndicator
                return cell
            case 1 :
                let cell = self.tableView.dequeueReusableCell(withIdentifier: ProfileDefaultCell.identifier, for: indexPath)
                cell.textLabel?.text = "My friends"
                cell.accessoryType = .disclosureIndicator
                return cell
            case 2 :
                let cell = self.tableView.dequeueReusableCell(withIdentifier: ProfileDefaultCell.identifier, for: indexPath)
                cell.textLabel?.text = "Notifications"
                cell.accessoryType = .disclosureIndicator
                return cell
            case 3 :
                let cell = self.tableView.dequeueReusableCell(withIdentifier: ProfileDefaultCell.identifier, for: indexPath)
                cell.textLabel?.text = "Settings"
                cell.accessoryType = .disclosureIndicator
                return cell
            case 4 :
                let cell = self.tableView.dequeueReusableCell(withIdentifier: ProfileDefaultCell.identifier, for: indexPath)
                cell.textLabel?.text = "Terms of conditions"
                cell.accessoryType = .disclosureIndicator
                return cell
            default:
                fatalError()
            }
        // todo
        default:
            fatalError()
        }
    }
    
    private func setUpTableView(){
        view.addSubview(tableView)
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.showsVerticalScrollIndicator = false
        self.tableView.showsHorizontalScrollIndicator = false
        self.tableView.register(UINib(nibName: ProfileDefaultCell.identifier, bundle: nil), forCellReuseIdentifier: ProfileDefaultCell.identifier)
        self.tableView.register(UINib(nibName: ProfileHeaderCell.identifier, bundle: nil), forCellReuseIdentifier: ProfileHeaderCell.identifier)
        self.tableView.register(UINib(nibName: ProfileContentCell.identifier, bundle: nil), forCellReuseIdentifier: ProfileContentCell.identifier)
        
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    }
}
