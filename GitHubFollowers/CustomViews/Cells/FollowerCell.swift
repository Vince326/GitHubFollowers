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
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func configure() {
        
    }
    
    
    
    
}
