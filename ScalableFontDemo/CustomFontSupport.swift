//
//  CustomFontSupport.swift
//  ScalableFontDemo
//
//  Created by Kyaw Zay Ya Lin Tun on 11/6/22.
//

import UIKit

private let playfairFonts: [UIFont.TextStyle: UIFont] = [
    .largeTitle: UIFont(name: "PlayfairDisplay-Regular", size: 34)!,
    .title1: UIFont(name: "PlayfairDisplay-Regular", size: 28)!,
    .title2: UIFont(name: "PlayfairDisplay-Regular", size: 22)!,
    .title3: UIFont(name: "PlayfairDisplay-Regular", size: 20)!,
    .headline: UIFont(name: "PlayfairDisplay-Bold", size: 17)!,
    .body: UIFont(name: "PlayfairDisplay-Regular", size: 17)!,
    .callout: UIFont(name: "PlayfairDisplay-Regular", size: 16)!,
    .subheadline: UIFont(name: "PlayfairDisplay-Regular", size: 15)!,
    .footnote: UIFont(name: "PlayfairDisplay-Regular", size: 13)!,
    .caption1: UIFont(name: "PlayfairDisplay-Regular", size: 12)!,
    .caption2: UIFont(name: "PlayfairDisplay-Regular", size: 11)!
]

extension UIFont {
    static func playfairFont(forTextStyle style: UIFont.TextStyle) -> UIFont {
        let customFont = playfairFonts[style]!
        let metrics = UIFontMetrics(forTextStyle: style)
        let scaledFont = metrics.scaledFont(for: customFont)
        
        return scaledFont
    }
}
