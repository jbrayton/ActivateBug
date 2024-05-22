//
//  AppDelegate.swift
//  ActivateBug
//
//  Created by John Brayton on 5/22/24.
//

import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {
    
    func applicationDidBecomeActive(_ notification: Notification) {
        print("Received call to applicationDidBecomeActive")
    }
    
    func applicationDidResignActive(_ notification: Notification) {
        print("Received call to applicationDidResignActive")
    }
    
}

