//
//  ButtonView.swift
//  SearchParty
//
//  Created by Wafi Choudhury on 1/8/22.
//

import SwiftUI

struct ButtonView: View {
    
    var text:String
    var image:String
    var subText:String
    
    var body: some View {
        
        VStack{
            
            ZStack{
                Rectangle()
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .shadow(radius: 5)
                    .aspectRatio(CGSize(width: 335, height: 175), contentMode: .fit)
                
                HStack{
                    
                    //image
                    Image(image)
                        .resizable()
                        .frame(width: 116, height: 116)
                        .clipShape(Circle())
                    
                    
                    Spacer()
                    //text
                    
                    VStack(alignment: .leading, spacing:20){
                        
                        Text(text)
                            .bold()
                            .foregroundColor(.black)
                        Text(subText)
                            .padding(.bottom,20)
                            .foregroundColor(.black)

                        
              
                        
                    }.padding(.leading, 20)
                    
                    
                }.padding(.horizontal,20)
                
                
            }
                }
        }
    }

