//
//  CircularButton.swift
//  Simon Says
//
//  Created by Marcus Dantas on 20/04/2021.
//

import UIKit

class CircularButton: UIButton {

    override func awakeFromNib() {
        let deviceIdiom = UIScreen.main.traitCollection.userInterfaceIdiom
        
        switch (deviceIdiom) {
            case .phone:
                layer.cornerRadius = frame.size.width/2
            case .pad:
                layer.cornerRadius = frame.size.width/1.0
            default:
                layer.cornerRadius = frame.size.width/2
        }
        
        layer.masksToBounds = true
    }
    
    override var isHighlighted: Bool {
        didSet {
            if isHighlighted {
                alpha = 1.0
            } else {
                alpha = 0.5
            }
        }
    }
}
