//
//  HomeView.swift
//  SearchParty
//
//  Created by Wafi Choudhury on 1/8/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
        NavigationView{
        
        
            VStack (alignment:.leading){
                
                
            Text("Find and create UT parties")
                .padding([.leading,.horizontal], 20)
        
                
            NavigationLink(
                destination: /*@START_MENU_TOKEN@*/Text("Destination")/*@END_MENU_TOKEN@*/,
                label: {
                    ButtonView(text:"Find Parties!", image: "download", subText: "locate parties near you")
                        .padding()
                })
            
            
            NavigationLink(
                destination: /*@START_MENU_TOKEN@*/Text("Destination")/*@END_MENU_TOKEN@*/,
                label: {
                    ButtonView(text:"Create a party", image: "images", subText: "Host your own party")
                        .padding()
                    
                })

           Spacer()
            
            }.navigationTitle("Search Party")
        }
    }

    struct HomeView_Previews: PreviewProvider {
        static var previews: some View {
            HomeView()
        }
    }
}
