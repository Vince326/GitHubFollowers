//
//  FollowerCell.swift
//  GitHubFollowers
//
//  Created by Vincent Hunter on 11/24/20.
//

import UIKit

class FollowerCell: UICollectionViewCell {
    static let resueId = "FollowerCell"
    
    let avatarImageView = GFAvatarImageView(frame: .zero)
    let usernameLbl = GFTitleLabel(TextAlignment: .center, fontSize: 16)
    let padding: CGFloat = 8
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
        configureViewController()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set(follower: Follower){
        // when called, sets username and login to cell
        usernameLbl.text = follower.login
    }
    
    
    private func configure() {
        addSubview(avatarImageView)
        addSubview(usernameLbl)
        
        NSLayoutConstraint.activate([
            avatarImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: padding),
            avatarImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: padding),
            avatarImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -padding),
            avatarImageView.heightAnchor.constraint(equalTo: avatarImageView.widthAnchor),
            usernameLbl.topAnchor.constraint(equalTo: avatarImageView.bottomAnchor, constant: 12),
            usernameLbl.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: padding),
            usernameLbl.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -padding),
            usernameLbl.heightAnchor.constraint(equalToConstant: 20)
            
        
        ])
        
    }
    
    configureViewController() {
        
    }
    
    
    
}
