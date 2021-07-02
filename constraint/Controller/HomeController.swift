//
//  ViewController.swift
//  constraint
//
//  Created by Teneocto on 01/07/2021.
//

import UIKit

class HomeController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var ortherPostLabel: UIView!
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var tableView: UITableView!{
        didSet{
            var frame = self.tableView.frame
            frame.size.height = self.tableView.contentSize.height
            self.tableView.frame = frame
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionViewSetUp()
        self.setUpTableView()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        var frame = self.tableView.frame;
        frame.size.height = self.tableView.contentSize.height;
        self.tableView.frame = frame;
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
}

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
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.tableView.deselectRow(at: indexPath, animated: true)
    }
}
