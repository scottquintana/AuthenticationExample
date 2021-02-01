//
//  AEButton.swift
//  Authentication Example
//
//  Created by Scott Quintana on 2/1/21.
//

import UIKit

class AEButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    
    convenience init(title: String, backgroundColor: UIColor) {
        self.init(frame: .zero)
        setTitle(title, for: .normal)
        self.backgroundColor = backgroundColor
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func configure() {
        translatesAutoresizingMaskIntoConstraints = false
        layer.cornerRadius = 6
        setTitleColor(.white, for: .normal)
        titleLabel?.font = UIFont.preferredFont(forTextStyle: .headline)
    }
    
    func set(backgroundColor: UIColor, title: String) {
        setTitle(title, for: .normal)
        self.backgroundColor = backgroundColor
    }
    
}
