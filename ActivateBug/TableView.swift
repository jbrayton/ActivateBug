//
//  TableView.swift
//  ActivateBug
//
//  Created by John Brayton on 5/22/24.
//

import AppKit

class TableView : NSTableView {
    
    override func menu(for event: NSEvent) -> NSMenu? {
        let menu = NSMenu()
        menu.addItem(NSMenuItem(title: "Item 1", action: nil, keyEquivalent: ""))
        menu.addItem(NSMenuItem(title: "Item 2", action: nil, keyEquivalent: ""))
        return menu
    }
    
}
