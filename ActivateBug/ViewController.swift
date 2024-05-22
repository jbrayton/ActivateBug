//
//  ViewController.swift
//  ActivateBug
//
//  Created by John Brayton on 5/22/24.
//

import Cocoa

class ViewController: NSViewController {
    
    let names = ["Moe","Larry","Curly"]
    
    @IBOutlet
    var tableView: NSTableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.rowHeight = 50
    }

}

extension ViewController : NSTableViewDataSource {
    
    func numberOfRows(in tableView: NSTableView) -> Int {
        return self.names.count
    }
    
}

extension ViewController : NSTableViewDelegate {
    
    func tableView(_ tableView: NSTableView, viewFor tableColumn: NSTableColumn?, row: Int) -> NSView? {
        let view = tableView.makeView(withIdentifier: NSUserInterfaceItemIdentifier("item"), owner: nil) as! ItemView
        view.label.stringValue = self.names[row]
        return view
    }
    
}
