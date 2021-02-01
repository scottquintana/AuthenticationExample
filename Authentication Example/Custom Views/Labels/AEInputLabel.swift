//
//  AEInputLabel.swift
//  Authentication Example
//
//  Created by Scott Quintana on 2/1/21.
//

import UIKit

class AEInputLabel: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configureLabel()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func configureLabel() {
        translatesAutoresizingMaskIntoConstraints = false
        
        font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        textAlignment = .left
        textColor = .black
    }
}
