//
//  UIViewController+Extension.swift
//  GitHubFollowers
//
//  Created by Vincent Hunter on 11/19/20.
//

import UIKit

extension UIViewController {
    
    func presentGFAlertOnMainThread(title:String, message:String, buttonTitle: String){
        DispatchQueue.main.async {
            let alertVC = GFAlertVC(title: title, message: message, buttonTitle: buttonTitle)
            alertVC.modalPresentationStyle = .overFullScreen
            alertVC.modalTransitionStyle = .crossDissolve
            self.present(alertVC, animated: true)
            
        }
    }
    
}
