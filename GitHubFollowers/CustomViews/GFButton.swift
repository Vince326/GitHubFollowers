//
//  GFButton.swift
//  GitHubFollowers
//
//  Created by Vincent Hunter on 11/17/20.
//

import UIKit

class GFButton: UIButton {

   override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(background:UIColor, title:String){
        super.init(frame: CGRect.zero)
        self.backgroundColor = background 
        self.setTitle(title, for: .normal)
        configure()
    }
    
    
    private func configure() {
        layer.cornerRadius = 10
        titleLabel?.textColor = .white
        titleLabel?.font = UIFont.preferredFont(forTextStyle: .headline)
        translatesAutoresizingMaskIntoConstraints = false
    }
    
}
