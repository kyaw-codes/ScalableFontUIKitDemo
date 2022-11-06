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
//        titleLabel.font = .systemFont(ofSize: 28)
//        titleLabel.font = .preferredFont(forTextStyle: .title1)
        titleLabel.font = .playfairFont(forTextStyle: .title1)
        
        // configure priceLabel
//        priceLabel.font = .systemFont(ofSize: 15, weight: .semibold)
//        priceLabel.font = .preferredFont(forTextStyle: .subheadline)
        priceLabel.font = .playfairFont(forTextStyle: .subheadline)
        
        // configure descriptionTitleLabel
//        descriptionTitleLabel.font = .systemFont(ofSize: 20)
//        descriptionTitleLabel.font = .preferredFont(forTextStyle: .title3)
        descriptionTitleLabel.font = .playfairFont(forTextStyle: .title3)

        // configure descriptionLabel
//        descriptionLabel.font = .systemFont(ofSize: 17)
//        descriptionLabel.font = .preferredFont(forTextStyle: .body)
        descriptionLabel.font = .playfairFont(forTextStyle: .body)
        descriptionLabel.text = descriptionText

        // configure orderNowButton
//        btnOrderNow.titleLabel?.font = .systemFont(ofSize: 15, weight: .semibold)
//        btnOrderNow.titleLabel?.font = .preferredFont(forTextStyle: .subheadline)
        btnOrderNow.titleLabel?.font = .playfairFont(forTextStyle: .subheadline)
        
        // opt-in to update font size on device content size category changes
        [titleLabel, priceLabel, descriptionTitleLabel, descriptionLabel, btnOrderNow.titleLabel]
            .forEach { $0?.adjustsFontForContentSizeCategory = true }

        // configure stackview spacing
        descriptionStackView.setCustomSpacing(12, after: priceLabel)
        descriptionStackView.setCustomSpacing(8, after: descriptionTitleLabel)
    }

}

