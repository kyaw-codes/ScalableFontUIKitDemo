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

        // configure descriptionLabel
        descriptionLabel.font = .systemFont(ofSize: 17)
        
        // configure orderNowButton

        // configure stackview spacing
        descriptionStackView.setCustomSpacing(12, after: priceLabel)
        descriptionStackView.setCustomSpacing(4, after: descriptionTitleLabel)
    }

}

