//
//  ViewController.swift
//  MOOD
//
//  Created by Zain on 2024-02-28.
//

import UIKit

class ViewController: UIViewController {
    
    let myPopular: [Popular] = [
        Popular(imageProfile: "aa", title: "Vasaparken", place: "Place", description: "Is one of the most popular places in Stockholm. ", imagePost: "aa"),
        Popular(imageProfile: "bb", title: "Protest for Gun Control", place: "Mood", description: "320 people are in the Mood to Protest for gun control in Saturday at Sergels Torg. ", imagePost: "bb"),
        Popular(imageProfile: "cc", title: "Cafe Opera", place: "Place", description: "Cafe Opera is popular with 200 Check ins", imagePost: "cc")
    ]
    
    let myFollowig: [Following] = [
        Following(imageFollowing: "aa", labelTitle: "Ali"),
        Following(imageFollowing: "bb", labelTitle: "Raza"),
        Following(imageFollowing: "cc", labelTitle: "Javed"),
        Following(imageFollowing: "dd", labelTitle: "Subhan")
    ]
    
    let myDiscover: [Discover] = [
        Discover(imageMain: "aa", imageLeft: "aa", imageRight: "aa", labelTitle: "Beer & Pool", labelDate: "Sat, 15 August • 13:00", labelDescription: "Biljardpalatset 112 34 Stockholm", labelColor: "Pool", image1: "aa", image2: "aa", image3: "aa"),
        Discover(imageMain: "bb", imageLeft: "bb", imageRight: "bb", labelTitle: "Photo Session", labelDate: "Sat, 1 January • 16:00", labelDescription: "HL Gallery (Place)", labelColor: "Exhibition", image1: "bb", image2: "bb", image3: "bb"),
        Discover(imageMain: "cc", imageLeft: "cc", imageRight: "cc", labelTitle: "Basketball", labelDate: "Tue, 30 November • 11:30", labelDescription: "Kalmgatan 44, 11320 Stockholm", labelColor: "Basketball", image1: "cc", image2: "cc", image3: "cc")
    ]
    
    @IBOutlet weak var topButtons: UIView!
    @IBOutlet weak var tableViewDiscover: UITableView!
    @IBOutlet weak var tableViewPopular: UITableView!
    
    @IBOutlet weak var collectionViewFollowing: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        topButtons.layer.cornerRadius = 12
        topButtons.clipsToBounds = true
        
        collectionViewFollowing.register(UINib(nibName: "FollowingCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "FollowingCell")
        
        tableViewPopular.register(UINib(nibName: "PopularTableViewCell", bundle: nil), forCellReuseIdentifier: "PopularCell")
        tableViewDiscover.register(UINib(nibName: "DiscoverTableViewCell", bundle: nil), forCellReuseIdentifier: "DiscoverCell")
        
        collectionViewFollowing.isHidden = true
        tableViewPopular.isHidden = true
        tableViewDiscover.isHidden = false
    }
    
    @IBAction func btnFollowing(_ sender: Any) {
        collectionViewFollowing.isHidden = false
        tableViewPopular.isHidden = true
        tableViewDiscover.isHidden = true
    }
    
    @IBAction func btnPopular(_ sender: Any) {
        collectionViewFollowing.isHidden = true
        tableViewPopular.isHidden  = false
        tableViewDiscover.isHidden = true
    }
    
    @IBAction func btnDiscover(_ sender: Any) {
        collectionViewFollowing.isHidden = true
        tableViewPopular.isHidden  = true
        tableViewDiscover.isHidden = false
    }
}

// MARK: - TableView for Popular Feed

extension ViewController: UITableViewDelegate, UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        if tableView == tableViewPopular{
            return 3
        } else if tableView == tableViewDiscover {
            return 3
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == tableViewPopular{
            return myPopular.count
        } else if tableView == tableViewDiscover {
            return myDiscover.count
        }
        return 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == tableViewPopular{
            let cell = tableView.dequeueReusableCell(withIdentifier: "PopularCell", for: indexPath) as! PopularTableViewCell
             let x = myPopular[indexPath.row]
             cell.configure(data: x)
             return cell
        } else if tableView == tableViewDiscover {
            let cell = tableView.dequeueReusableCell(withIdentifier: "DiscoverCell", for: indexPath) as! DiscoverTableViewCell
             let x = myDiscover[indexPath.row]
             cell.configure(data: x)
             return cell
        }
        return UITableViewCell()
       
    }
}

// MARK: - CollectionView for Following Feed

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return myFollowig.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FollowingCell", for: indexPath) as! FollowingCollectionViewCell
        let data = myFollowig[indexPath.row]
        cell.Configure(data: data)
        return cell
    }
}
