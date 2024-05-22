//
//  ItemView.swift
//  ActivateBug
//
//  Created by John Brayton on 5/22/24.
//

import AppKit

class ItemView : NSView {
    
    var label: NSTextField!
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.label = NSTextField(labelWithString: "")
        self.label.translatesAutoresizingMaskIntoConstraints = false
        self.label.maximumNumberOfLines = 1
        self.label.lineBreakMode = .byTruncatingTail
        self.addSubview(self.label)
        self.addConstraints([
            self.label.leadingAnchor.constraint(equalToSystemSpacingAfter: self.leadingAnchor, multiplier: 1.0),
            self.trailingAnchor.constraint(equalToSystemSpacingAfter: self.label.trailingAnchor, multiplier: 1.0),
            self.label.centerYAnchor.constraint(equalTo: self.centerYAnchor),
        ])
    }
    
}
