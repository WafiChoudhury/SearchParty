//
//  SearchPartyApp.swift
//  SearchParty
//
//  Created by Wafi Choudhury on 1/8/22.
//

import SwiftUI

@main
struct SearchPartyApp: App {
    var body: some Scene {
        WindowGroup {
            LaunchView()
                .environmentObject(ContentModel())
            
            
            
        }
    }
}
