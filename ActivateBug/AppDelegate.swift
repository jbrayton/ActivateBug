//
//  AppDelegate.swift
//  ActivateBug
//
//  Created by John Brayton on 5/22/24.
//

import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {
    
    let shouldApplyBugFix = false
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        if self.shouldApplyBugFix {
            self.applyBugFix()
        }
    }
    
    // MARK: Fix bug
    
    var monitor: Any?

    func applyBugFix() {
        self.monitor = NSEvent.addLocalMonitorForEvents(matching: [.rightMouseDown], handler: { (_ event: NSEvent) -> NSEvent? in
            
            if !NSApplication.shared.isActive {
                print("Activating the app because it is not active even though it is responding to a right click.")
                
                // The header states the following:
                // > You shouldn’t assume the app will be active immediately
                // > after sending this message. The framework also does not
                // > guarantee that the app will be activated at all.
                //
                // In my testing this seems to work here, but no guarantees.
                NSApplication.shared.activate()
            }
            
            return event
            
        })
    }

}

