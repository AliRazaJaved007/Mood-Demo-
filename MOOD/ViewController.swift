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
    
    
    @IBOutlet weak var viewFollowing: UIView!
    @IBOutlet weak var viewPopular: UIView!
    @IBOutlet weak var tableViewFollowing: UITableView!
    
    @IBOutlet weak var collectionViewFollowing: UICollectionView!
    @IBOutlet weak var tableViewPopular: UITableView!
    
    //var image = ["dd"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionViewFollowing.register(UINib(nibName: "FollowingCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "FollowingCell")
        
        tableViewPopular.register(UINib(nibName: "PopularTableViewCell", bundle: nil), forCellReuseIdentifier: "PopularCell")
                
        viewFollowing.isHidden = false
        viewPopular.isHidden = true
    }
    
    @IBAction func btnFollowing(_ sender: Any) {
        viewFollowing.isHidden = false
        viewPopular.isHidden = true
    }
    
    @IBAction func btnPopular(_ sender: Any) {
        viewFollowing.isHidden = true
        viewPopular.isHidden = false
    }
    
}


extension ViewController: UITableViewDelegate, UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myPopular.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell = tableView.dequeueReusableCell(withIdentifier: "PopularCell", for: indexPath) as! PopularTableViewCell
        let x = myPopular[indexPath.row]
        cell.configure(data: x)
        return cell
    }
    
}

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
    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        let width = 152
//        let height = 213
//        return CGSize(width: width, height: height)
//    }
    
    
}
