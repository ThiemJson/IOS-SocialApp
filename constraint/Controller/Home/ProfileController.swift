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
    
    let topHeaderCell : ProfileHeaderCell = {
        let cell = ProfileHeaderCell()
        cell.translatesAutoresizingMaskIntoConstraints = false
        return cell
    }()
    
    let firstNameCell  : UITableViewCell = {
        let cell = UITableViewCell()
        cell.translatesAutoresizingMaskIntoConstraints = false
        return cell
    }()
    
    let firstNameEdt : UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let secondNameCell  : UITableViewCell = {
        let cell = UITableViewCell()
        cell.translatesAutoresizingMaskIntoConstraints = false
        return cell
    }()
    
    let secondNameEdt : UITextField = {
        let cell = UITextField()
        cell.translatesAutoresizingMaskIntoConstraints = false
        return cell
    }()
    
    let addressCel : UITableViewCell = {
        let cell = UITableViewCell()
        cell.translatesAutoresizingMaskIntoConstraints = false
        return cell
    }()
    
    let addressEdt : UITextField = {
        let cell = UITextField()
        cell.translatesAutoresizingMaskIntoConstraints = false
        return cell
    }()
    
    let bioCell : UITableViewCell = {
        let cell = UITableViewCell()
        cell.translatesAutoresizingMaskIntoConstraints = false
        return cell
    }()
    
    let bioEdt : UITextField = {
        let cell = UITextField()
        cell.translatesAutoresizingMaskIntoConstraints = false
        return cell
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUpView()
        self.setUpTableView()
    }
}

// MARK: Setup view
extension ProfileController {
    private func setUpView(){
        self.title = "My profile"
        
        view.addSubview(tableView)
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        tableView.addSubview(topHeaderCell)
        tableView.addSubview(firstNameCell)
        tableView.addSubview(secondNameCell)
        tableView.addSubview(addressCel)
        tableView.addSubview(bioCell)
        
        firstNameCell.addSubview(firstNameEdt)
        secondNameCell.addSubview(secondNameEdt)
        addressCel.addSubview(addressEdt)
        bioCell.addSubview(bioEdt)
        
        firstNameCell.centerYAnchor.constraint(equalTo: firstNameEdt.centerYAnchor).isActive = true
        firstNameCell.leadingAnchor.constraint(equalTo: firstNameEdt.leadingAnchor).isActive = true
        
        secondNameCell.centerYAnchor.constraint(equalTo: secondNameEdt.centerYAnchor).isActive = true
        secondNameCell.leadingAnchor.constraint(equalTo: secondNameEdt.leadingAnchor).isActive = true
        
        addressCel.centerYAnchor.constraint(equalTo: addressEdt.centerYAnchor).isActive = true
        addressCel.leadingAnchor.constraint(equalTo: addressEdt.leadingAnchor).isActive = true
        
        bioCell.centerYAnchor.constraint(equalTo: bioEdt.centerYAnchor).isActive = true
        bioCell.leadingAnchor.constraint(equalTo: bioEdt.leadingAnchor).isActive = true
    }
}

// MARK:  UITableView Delegate, Datasource
extension ProfileController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
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
            return "ACTIONS"
        default:
            fatalError()
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            switch indexPath.row {
            case 0:
                return topHeaderCell
            case 1:
                return firstNameCell
            case 2:
                return secondNameCell
            case 3:
                return addressCel
            case 4:
                return bioCell
            default:
                fatalError()
            }
        // todo
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
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.showsVerticalScrollIndicator = false
        self.tableView.showsHorizontalScrollIndicator = false
        self.tableView.register(UINib(nibName: ProfileDefaultCell.identifier, bundle: nil), forCellReuseIdentifier: ProfileDefaultCell.identifier)
    }
    
    
}
