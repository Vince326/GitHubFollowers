//
//  FollowersListVC.swift
//  GitHubFollowers
//
//  Created by Vincent Hunter on 11/19/20.
//

import UIKit

class FollowersListVC: UIViewController {
    
    var username : String!
    var collectionView = UICollectionView!()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureCollectionView()
        configureFollowers()
        view.backgroundColor = .systemBackground
        
        NetworkManager.shared.getFollowers(for: username, page: 1) { (result) in
            
            switch result {
            case .failure(let error):
                self.presentGFAlertOnMainThread(title: "Bad Stuff Happened", message: error.rawValue, buttonTitle: "OK")
            case .success( let followers):
                print(followers)
            }
    }
}

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
   
    
    

    func configureCollectionView() {
        collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: UICollectionViewFlowLayout())
        view.addSubview(collectionView)
        collectionView.backgroundColor = .systemPink
        collectionView.register(FollowerCell.self, withReuseIdentifier: FollowerCell.resueId)
    }
    
}
