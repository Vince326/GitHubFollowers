//
//  GFBodyLabel.swift
//  GitHubFollowers
//
//  Created by Vincent Hunter on 11/19/20.
//

import UIKit

class GFBodyLabel: UILabel {

    override init(frame : CGRect ) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(TextAlignment: NSTextAlignment){
        super.init(frame: .zero)
        self.textAlignment = TextAlignment
        configure()
    }
    
    private func configure() {
        textColor = .secondaryLabel
        font = UIFont.preferredFont(forTextStyle: .body)
        adjustsFontSizeToFitWidth = true
        minimumScaleFactor = 0.75
        lineBreakMode = .byWordWrapping
        translatesAutoresizingMaskIntoConstraints = false
    }
    

}
