//
//  AppDelegate.swift
//  ActivateBug
//
//  Created by John Brayton on 5/22/24.
//

import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {
    
    let shouldApplyBugFix = true
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        if self.shouldApplyBugFix {
            ContextMenuActivationWorkaround.shared.applyBugFix()
        }
    }
    
}

