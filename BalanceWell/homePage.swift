//
//  homePage.swift
//  BalanceWell
//
//  Created by Smita Mohan on 7/18/24.
//

import SwiftUI

extension Color{
    static let InnerColor = Color(red: 218/255, green: 255/255, blue: 238/255)
    static let OuterColor = Color(red: 148/255, green: 185/255, blue: 255/255)
    static let DarkBlue = Color(red: 0/255, green: 74/255, blue: 173/255)
    
    static let SleepInner = Color(red: 33/255, green: 32/255, blue: 133/255)
    static let SleepOuter = Color(red: 0/255, green: 0/255, blue: 0/255)
}

struct homePage: View {
    var body: some View {
       
        NavigationStack{
          
            ZStack {
                RadialGradient(gradient: Gradient(colors: [Color.InnerColor, Color.OuterColor]), center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, startRadius: /*@START_MENU_TOKEN@*/5/*@END_MENU_TOKEN@*/, endRadius: /*@START_MENU_TOKEN@*/500/*@END_MENU_TOKEN@*/)
                VStack{
                    ZStack{
                        Image("Cloud")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 700)
                            .offset(x: 20)
                        VStack{
                            Text("Affirmation of the Day")
                                .font(.system(size: 30))
                                .bold()
                                .multilineTextAlignment(.center)
                                .foregroundColor(.DarkBlue)
                                .multilineTextAlignment(.center)
                            Text("I am strong, both in body and mind.")
                                .font(.system(size: 20))
                                .multilineTextAlignment(.center)
                                .foregroundColor(.DarkBlue)
                                .multilineTextAlignment(.center)
                                .frame(width:400)
                        }
                    }
                    VStack{
                        NavigationLink(destination: StretchesView()) {
                            Text("Stretches")
                                .padding()
                        }
                        .background(Color.DarkBlue)      .foregroundColor(.white)
                        .cornerRadius(10.0)
                        .font(.title2)
                        .bold()
                        .padding()
                        
                        
                        NavigationLink(destination: SleepTrackerView()) {
                            Text("Sleep Tracker")
                                .padding()
                        }
                        .background(Color.DarkBlue)
                        .foregroundColor(.white)
                        .cornerRadius(10.0)
                        .font(.title2)
                        .bold()
                        .padding()
                        
                        NavigationLink(destination: Meditation()) {
                            Text("Meditation")
                                .padding()
                        }
                        .background(Color.DarkBlue)
                        .foregroundColor(.white)
                        .cornerRadius(10.0)
                        .font(.title2)
                        .bold()
                        .padding()
                        
                    }
                    .offset(y: -50)
                    
                    Spacer()
                }
            }
            .ignoresSafeArea()
        }
    }
}

#Preview {
    homePage()
}
