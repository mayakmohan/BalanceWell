//
//  Meditation.swift
//  BalanceWell
//
//  Created by Smita Mohan on 7/18/24.
//

import SwiftUI

/* extension Color{
   static let InnerColor = Color(red: 218/255, green: 255/255, blue: 238/255)
   static let OuterColor = Color(red: 148/255, green: 185/255, blue: 255/255)
   static let DarkBlue = Color(red: 0/255, green: 74/255, blue: 173/255)
}

*/

struct Meditation: View {
    var body: some View
    {
        
        NavigationStack {
            
            ZStack {
                    RadialGradient(gradient: Gradient(colors:[Color.InnerColor, Color.OuterColor]), center: .center, startRadius: 5, endRadius: 500)
                        .ignoresSafeArea()
                
                VStack {
                    Text("Meditation")
                        .font(.system(size: 40))
                        .bold()
                        .foregroundColor(.DarkBlue)
                        .padding(.top, 50)
                        .padding(.bottom, 150)
                    
                    //insert picture/visual
                    
                    Text("Timers")
                        .font(.system(size: 30))
                        .bold()
                        .foregroundColor(.DarkBlue)
                        .padding(.bottom)
                    
                    
                    NavigationLink(destination: TwoMinuteTimer()) {
                        Text("Set for 2 minutes")
                            .font(.system(size: 23))
                            .bold()
                            .padding()
                            .background(Color.DarkBlue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    .padding()
                    .padding(.bottom)
                    
                    NavigationLink(destination: FiveMinTimer()) {
                        Text("Set for 5 minutes")
                            .font(.system(size: 23))
                            .bold()
                            .padding()
                            .background(Color.DarkBlue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    .padding()
                    .padding(.bottom)
                    
                    NavigationLink(destination: TenMinTimer()) {
                        Text("Set for 10 minutes")
                            .font(.system(size: 23))
                            .bold()
                            .padding()
                            .background(Color.DarkBlue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    .padding()
                    .padding(.bottom)
                    
                    Spacer()
                    
                }
            }
            // .navigationTitle("Meditation")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(false)
        }
    }
}

#Preview {
    MeditationView()
}
