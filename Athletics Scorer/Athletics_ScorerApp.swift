//
//  Athletics_ScorerApp.swift
//  Athletics Scorer
//
//  Created by Hughes, Teo (BJH) on 19/05/2022.
//

import SwiftUI
import Firebase
import FirebaseAnalytics

@main
struct Athletics_ScorerApp: App {
    var body: some Scene {
        WindowGroup {
            EventsView()
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        FirebaseApp.configure()
        return true
    }
}
