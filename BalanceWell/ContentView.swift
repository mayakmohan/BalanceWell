//
//  ContentView.swift
//  BalanceWell
//
//  Created by Smita Mohan on 7/18/24.
//

//
//  SwiftUIView.swift
//  cloud
//
//  Created by Ali on 7/18/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                RadialGradient(gradient: Gradient(colors: [Color.InnerColor, Color.OuterColor]), center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, startRadius: /*@START_MENU_TOKEN@*/5/*@END_MENU_TOKEN@*/, endRadius: /*@START_MENU_TOKEN@*/500/*@END_MENU_TOKEN@*/)
                VStack {
                    Spacer()
                    
                    Text("BalanceWell")
                        .font(.system(size: 55))
                        .bold()
                        .foregroundColor(.DarkBlue)
                    Spacer()
        
        
                        NavigationLink(destination: homePage()) {
                            Text("Click to get started")
                                .font(.title2)
                                .foregroundColor(.DarkBlue)
                                .bold()
                                .padding(.bottom, 40)
                    
                    }
                }
            }
            .ignoresSafeArea()
        }
    }
}

#Preview {
   ContentView()
}
