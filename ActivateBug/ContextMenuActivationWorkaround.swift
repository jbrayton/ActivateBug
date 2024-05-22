//
//  ContextMenuActivationBugFix.swift
//  ActivateBug
//
//  Created by John Brayton on 5/22/24.
//

import AppKit

class ContextMenuActivationWorkaround {
    
    static let shared = ContextMenuActivationWorkaround()
    
    private var rightClickEventMonitor: Any?

    func applyWorkaround() {

        self.rightClickEventMonitor = NSEvent.addLocalMonitorForEvents(matching: [.rightMouseDown], handler: { (_ event: NSEvent) -> NSEvent? in
            
            if !NSApplication.shared.isActive {

                // I would remove this from production code.
                print("Activating the app because it is not active even though it is responding to a right click.")
                
                // This method is deprecated, but `NSApplication.shared.activate()` is not guaranteed to work.
                // This method does seem to work more reliably than `NSApplication.shared.activate()`.
                NSApplication.shared.activate(ignoringOtherApps: true)
            }
            
            return event
            
        })
    }
    
    func removeWorkaround() {
        if let rightClickEventMonitor = self.rightClickEventMonitor {
            NSEvent.removeMonitor(rightClickEventMonitor)
            self.rightClickEventMonitor = nil
        }
    }

}
