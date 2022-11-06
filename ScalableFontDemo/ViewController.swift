//
//  ViewController.swift
//  ScalableFontDemo
//
//  Created by Kyaw Zay Ya Lin Tun on 11/5/22.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var descriptionTitleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var btnOrderNow: UIButton!
    
    private let descriptionText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    
    var descriptionStackView: UIStackView {
        priceLabel.superview as! UIStackView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureViews()
    }

    private func configureViews() {
        // configure titleLabel
        titleLabel.font = .systemFont(ofSize: 28)
        
        // configure priceLabel
        priceLabel.font = .systemFont(ofSize: 15, weight: .semibold)
        
        // configure descriptionTitleLabel
        descriptionTitleLabel.font = .systemFont(ofSize: 20)
        descriptionLabel.text = descriptionText

        // configure descriptionLabel
        descriptionLabel.font = .systemFont(ofSize: 17)
        
        // configure orderNowButton
        btnOrderNow.titleLabel?.font = .systemFont(ofSize: 15, weight: .semibold)

        // configure stackview spacing
        descriptionStackView.setCustomSpacing(12, after: priceLabel)
        descriptionStackView.setCustomSpacing(8, after: descriptionTitleLabel)
    }

}

