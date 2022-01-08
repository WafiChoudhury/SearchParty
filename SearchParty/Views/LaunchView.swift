//
//  LaunchView.swift
//  SearchParty
//
//  Created by Wafi Choudhury on 1/8/22.
//

import SwiftUI
import CoreLocation

struct LaunchView: View {
    
    @EnvironmentObject var model: ContentModel
    
    var body: some View {
        
        if(model.authorizationState == .notDetermined){
            //show onboarding
        }
        else if (model.authorizationState == CLAuthorizationStatus.authorizedAlways || model.authorizationState == CLAuthorizationStatus.authorizedWhenInUse){
            
            HomeView()
        }
        
        
        
    }
    
    
}

struct LaunchView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchView()
    }
}
