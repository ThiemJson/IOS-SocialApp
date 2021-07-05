//
//  ViewController.swift
//  constraint
//
//  Created by Teneocto on 01/07/2021.
//

import UIKit

class HomeController: UIViewController {
    @IBOutlet weak var tableViewHeight: NSLayoutConstraint!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var ortherPostLabel: UIView!
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.viewSetup()
        self.collectionViewSetUp()
        self.setUpTableView()
    }
    
    deinit {
        self.tableView.removeObserver(self, forKeyPath: "contentSize")
    }
}

// MARK: View Setup
extension HomeController {
    override func viewWillAppear(_ animated: Bool) {
        self.title = "My posts"
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.navigationBar.prefersLargeTitles = false
    }
    
    private func viewSetup(){
        self.title = "My posts"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        let searchController = UISearchController(searchResultsController: nil)
        searchController.obscuresBackgroundDuringPresentation = false
        navigationItem.searchController = searchController
        definesPresentationContext = true
        navigationItem.hidesSearchBarWhenScrolling = true
        
        
        let rightBarButton = UIBarButtonItem(barButtonSystemItem: .camera, target: self, action: #selector(gotToProfile))
        navigationItem.rightBarButtonItem = rightBarButton
    }
    
    @objc private func gotToProfile(){
        performSegue(withIdentifier: "showProfileSegue", sender: self)
    }
}


// MARK: CollectionView Delegate, Datasource
extension HomeController : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    private func collectionViewSetUp(){
        collectionView.delegate = self
        collectionView.dataSource = self
        
        self.collectionView.register(UINib(nibName: CustomCell.identifier, bundle: nil), forCellWithReuseIdentifier: CustomCell.identifier)
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        
        self.collectionView.collectionViewLayout = layout
        self.collectionView.showsHorizontalScrollIndicator = false
        self.collectionView.showsVerticalScrollIndicator = false
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CustomCell.identifier, for: indexPath) as! CustomCell
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.size.width * 0.4, height: view.frame.size.height * 0.25)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "viewStory", sender: self)
        self.collectionView.deselectItem(at: indexPath, animated: true)
    }
}

// MARK: UITableView Delegate. Datasource
extension HomeController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 12
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: PostCell.identidier, for: indexPath) as! PostCell
        return cell
    }
    
    private func setUpTableView(){
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.tableView.showsVerticalScrollIndicator = false
        self.tableView.showsHorizontalScrollIndicator = false
        self.tableView.separatorStyle = .none
        self.tableView.register(UINib(nibName: PostCell.identidier, bundle: nil), forCellReuseIdentifier: PostCell.identidier)
        self.tableView.addObserver(self, forKeyPath: "contentSize", options: .new, context: nil)
    }
    
    override func observeValue(forKeyPath keyPath: String?, of object: Any?,
                               change: [NSKeyValueChangeKey : Any]?,
                               context: UnsafeMutableRawPointer?) {
        
        if let obj = object as? UITableView,
           obj == self.tableView &&
            keyPath == "contentSize" {
            print("resize")
            self.tableViewHeight.constant = tableView.contentSize.height
        }
    }
}

// MARK: Segue
extension HomeController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "viewStory" {
            let _ = segue.destination as! StoryController
            self.navigationItem.backButtonTitle = ""
        }
    }
}
